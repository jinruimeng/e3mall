package cn.e3mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.pojo.TbItem;
import cn.e3mall.pojo.TbItemDesc;
import cn.e3mall.service.ItemService;

/**
 * 商品管理Controller
 * <p>
 * Title: ItemController
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
@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;

	@RequestMapping("/item/{itemId}")
	@ResponseBody
	public TbItem getItemById(@PathVariable Long itemId) {
		TbItem tbItem = itemService.getItemById(itemId);
		return tbItem;
	}

	@RequestMapping("/item/list")
	@ResponseBody
	public EasyUIDataGridResult getItemList(Integer page, Integer rows) {
		// 调用服务查询商品列表
		EasyUIDataGridResult result = itemService.getItemList(page, rows);
		return result;
	}

	@RequestMapping("/rest/item/param/item/query/{id}")
	@ResponseBody
	public TbItem queryById(@PathVariable long id) {
		return itemService.getItemById(id);
	}

	@RequestMapping("/rest/item/query/item/desc/{id}")
	@ResponseBody
	public TbItemDesc selectTbItemDesc(@PathVariable long id) {
		return itemService.getItemDescById(id);
	}

	/**
	 * 商品添加功能
	 */
	@RequestMapping(value = "/item/save", method = RequestMethod.POST)
	@ResponseBody
	public E3Result addItem(TbItem item, String desc) {
		E3Result result = itemService.addItem(item, desc);
		return result;
	}

	@RequestMapping(value = "/rest/item/update", method = RequestMethod.POST)
	@ResponseBody
	public E3Result updateItem(TbItem item, String desc) {
		E3Result result = itemService.updateItem(item, desc);
		return result;
	}

	@RequestMapping(value = "/rest/item/delete", method = RequestMethod.POST)
	@ResponseBody
	public E3Result deleteItem(@RequestParam("ids") String ids) {
		String[] split = ids.split(",");
		for (String id : split) {
			itemService.deleteItem(Long.valueOf(id));
		}
		return E3Result.ok();
	}

	@RequestMapping(value = "/rest/item/instock", method = RequestMethod.POST)
	@ResponseBody
	public E3Result instockItems(@RequestParam("ids") String ids) {
		String[] split = ids.split(",");
		long itemId;
		for (String id : split) {
			itemId = Long.valueOf(id);
			itemService.instockItem(itemId);
		}
		return E3Result.ok();
	}

	@RequestMapping(value = "/rest/item/reshelf", method = RequestMethod.POST)
	@ResponseBody
	public E3Result reshelfItems(@RequestParam("ids") String ids) {
		String[] split = ids.split(",");
		long itemId;
		for (String id : split) {
			itemId = Long.valueOf(id);
			itemService.reshelfItem(itemId);
		}
		return E3Result.ok();
	}

}
