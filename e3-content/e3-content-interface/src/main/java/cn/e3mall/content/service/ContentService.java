package cn.e3mall.content.service;

import java.util.List;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.pojo.TbContent;

public interface ContentService {
	
	List<TbContent> getContentListByCid(long cid);
	EasyUIDataGridResult getContentList(Long categoryId, Integer page, Integer rows);
	E3Result addContent(TbContent content);
	E3Result updateContent(TbContent content);
	E3Result deleteContent(String[] ids);
	
}
