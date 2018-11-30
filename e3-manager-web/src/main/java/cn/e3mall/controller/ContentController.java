package cn.e3mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.content.service.ContentService;
import cn.e3mall.pojo.TbContent;

/**
 * 内容管理Controller
 * <p>Title: ContentController</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Controller
public class ContentController {
	
	@Autowired
	private ContentService contentService;

    /*
     * 加载指定内容分类下的内容列表
     */
    @RequestMapping("/content/query/list")
    @ResponseBody
    public EasyUIDataGridResult list(Long categoryId,Integer page, Integer rows){
        //调用service返回数据
        return contentService.getContentList(categoryId,page,rows);
    }

	@RequestMapping(value="/content/save", method=RequestMethod.POST)
	@ResponseBody
	public E3Result addContent(TbContent content) {
		//调用服务把内容数据保存到数据库
		E3Result e3Result = contentService.addContent(content);
		return e3Result;
	}
	
	/*
     * 删除(可以为多个)
     */
    @RequestMapping("/content/delete")
    @ResponseBody
    public E3Result delete(String[] ids){
        return contentService.deleteContent(ids);
    }

    /*
     * 编辑
     */
    @RequestMapping(value="/rest/content/edit", method=RequestMethod.POST)
    @ResponseBody
    public E3Result edit(TbContent content){
        return contentService.updateContent(content);
    }
}
