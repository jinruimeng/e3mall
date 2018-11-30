package cn.e3mall.content.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.e3mall.common.jedis.JedisClient;
import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.common.utils.JsonUtils;
import cn.e3mall.content.service.ContentService;
import cn.e3mall.mapper.TbContentMapper;
import cn.e3mall.pojo.TbContent;
import cn.e3mall.pojo.TbContentExample;
import cn.e3mall.pojo.TbContentExample.Criteria;

/**
 * 内容管理Service
 * <p>
 * Title: ContentServiceImpl
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Company: www.itcast.cn
 * </p>
 * 
 * @version 1.0
 */
@Service
public class ContentServiceImpl implements ContentService {

	@Autowired
	private TbContentMapper contentMapper;

	@Autowired
	private JedisClient jedisClient;

	@Value("${CONTENT_LIST}")
	private String CONTENT_LIST;
	/**
	 * 根据内容分类id查询内容列表
	 * <p>
	 * Title: getContentListByCid
	 * </p>
	 * <p>
	 * Description:
	 * </p>
	 * 
	 * @param cid
	 * @return
	 * @see cn.e3mall.content.service.ContentService#getContentListByCid(long)
	 */
	@Override
	public List<TbContent> getContentListByCid(long cid) {
		// 查询缓存
		try {
			// 如果缓存中有直接响应结果
			String json = jedisClient.hget(CONTENT_LIST, cid + "");
			if (StringUtils.isNotBlank(json)) {
				List<TbContent> list = JsonUtils.jsonToList(json, TbContent.class);
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 如果没有查询数据库
		TbContentExample example = new TbContentExample();
		Criteria criteria = example.createCriteria();
		// 设置查询条件
		criteria.andCategoryIdEqualTo(cid);
		// 执行查询
		List<TbContent> list = contentMapper.selectByExampleWithBLOBs(example);
		// 把结果添加到缓存
		try {
			jedisClient.hset(CONTENT_LIST, cid + "", JsonUtils.objectToJson(list));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public EasyUIDataGridResult getContentList(Long categoryId, Integer page, Integer rows) {
		//创建结果对象
		EasyUIDataGridResult result = new cn.e3mall.common.pojo.EasyUIDataGridResult();

        //设置分页
        PageHelper.startPage(page,rows);
        //创建查询条件对象
        TbContentExample example = new TbContentExample();
        //封装查询条件
        example.createCriteria().andCategoryIdEqualTo(categoryId);
        //执行查询
        List<TbContent> contents = contentMapper.selectByExampleWithBLOBs(example);

        //使用查询结果获取分页信息对象
        PageInfo<TbContent> pageInfo = new PageInfo<>(contents);

        //设置分页信息到结果对象中
        result.setRows(pageInfo.getList());
        result.setTotal((int) pageInfo.getTotal());
        //返回结果
        return result;

	}
	
	@Override
	public E3Result addContent(TbContent content) {
		// 将内容数据插入到内容表
		content.setCreated(new Date());
		content.setUpdated(new Date());
		// 插入到数据库
		contentMapper.insertSelective(content);
		// 缓存同步,删除缓存中对应的数据
		jedisClient.hdel(CONTENT_LIST, content.getCategoryId().toString());
		return E3Result.ok();
	}

	@Override
	public E3Result updateContent(TbContent content) {
		// 修改更新时间
		content.setUpdated(new Date());
		Long CategoryId = content.getCategoryId();
		// 保存编辑后的数据
		contentMapper.updateByPrimaryKeyWithBLOBs(content);
		// 缓存同步,删除缓存中对应的数据
		jedisClient.hdel(CONTENT_LIST, CategoryId.toString());
		// 返回成功
		return E3Result.ok();

	}

	@Override
	public E3Result deleteContent(String[] ids) {
		try {
			TbContent content = new TbContent();
			ArrayList<Long> catIds = new ArrayList<>();

			// 遍历id数组
			for (String id : ids) {
				// 执行删除
				content = contentMapper.selectByPrimaryKey(Long.valueOf(id));
				if (!catIds.contains(content.getCategoryId())) {
					catIds.add(content.getCategoryId());
				}
				contentMapper.deleteByPrimaryKey(Long.valueOf(id));
			}
			jedisClient.hdel(CONTENT_LIST, catIds.toString());
			// 返回成功
			return E3Result.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return E3Result.build(500, "删除失败！");
		}
	}
}
