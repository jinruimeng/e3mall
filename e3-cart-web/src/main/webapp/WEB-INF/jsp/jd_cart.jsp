<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>我的购物车 - 京东商城</title>
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/5.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/5.0.0/nav.css,shoppingcart/5.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css" />
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/1.0.0/unit/base/5.0.0/base.js"></script>
<link source="widget"
	href="//misc.360buyimg.com/user/cart/??/widget/no-login/no-login.css"
	rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/cart/widget/??common/common.css,header-2017/header-2017.css,cart-sidebar/cart-sidebar.css,cart-sidebar-follow/cart-sidebar-follow.css,cart-filter-bar/cart-filter-bar.css,cart-similar/cart-similar.css,cart-gift/cart-gift.css,order-combined/order-combined.css,unmarket/unmarket.css,cart-inner-new/cart-inner-new.css,cart-toolbar-new/cart-toolbar-new.css,cart-removed/cart-removed.css,cart-full/cart-full.css,cart-smart/cart-smart.css,cart-tabs-new/cart-tabs-new.css,p-detect/p-detect.css,backpanel/backpanel.css,order-cross/order-cross.css"
	source="widget" />
<script type="text/javascript">
	try {
		window._alysAA = window._alysAA || [];
		var _alysAA = window._alysAA;
		_alysAA.push([ 'init', 'ifc', 'T-000014-01' ]);
		;
		(function() {
			var idgJsPath = "//misc.360buyimg.com/lib/js/2012";
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = idgJsPath + '/idigger.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	} catch (err) {
	}
</script>
</head>
<body>
	<script type="text/javascript">
		pageConfig.fridgeFlagRebuy = '0';
		pageConfig.fridgeFLagMenus = '0';
		pageConfig.fridgeFlagSeason = '0';
	</script>
	<!--shortcut start-->
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fl">
				<li id="ttbar-home"><i class="iconfont">&#xe608;</i><a
					href="//www.jd.com/" target="_blank">京东首页</a></li>
				<li class="dorpdown" id="ttbar-mycity"></li>
			</ul>
			<ul class="fr">
				<li class="fore1" id="ttbar-login"><a
					href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;<a
					href="javascript:regist();" class="link-regist style-red">免费注册</a>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a target="_blank" href="//order.jd.com/center/list.action">我的订单</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore3 dorpdown" id="ttbar-myjd">
					<div class="dt cw-icon">
						<!-- <i class="ci-right"><s>◇</s></i> -->
						<a target="_blank" href="//home.jd.com/">我的京东</a><i
							class="iconfont">&#xe605;</i>
					</div>
					<div class="dd dorpdown-layer"></div>
				</li>
				<li class="spacer"></li>
				<li class="fore4" id="ttbar-member">
					<div class="dt">
						<a target="_blank" href="//vip.jd.com/">京东会员</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore5" id="ttbar-ent">
					<div class="dt">
						<a target="_blank" href="//b.jd.com/">企业采购</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore6 dorpdown" id="ttbar-serv">
					<div class="dt cw-icon">
						<!-- <i class="ci-right"><s>◇</s></i> -->
						客户服务<i class="iconfont">&#xe605;</i>
					</div>
					<div class="dd dorpdown-layer"></div>
				</li>
				<li class="spacer"></li>
				<li class="fore7 dorpdown" id="ttbar-navs">
					<div class="dt cw-icon">
						<!-- <i class="ci-right"><s>◇</s></i> -->
						网站导航<i class="iconfont">&#xe605;</i>
					</div>
					<div class="dd dorpdown-layer"></div>
				</li>
				<li class="spacer"></li>
				<li class="fore8 dorpdown" id="ttbar-apps">
					<div class="dt cw-icon">
						<!-- <i class="ci-left"></i> -->
						<!-- <i class="ci-right"><s>◇</s></i> -->
						<a target="_blank" href="//app.jd.com/">手机京东</a>
					</div>
				</li>
			</ul>
			<span class="clr"></span>
		</div>
	</div>
	<div id="o-header-2013">
		<div id="header-2013" style="display: none;"></div>
	</div>
	<!--shortcut end-->
	<div class="w w1 header clearfix">
		<div id="logo-2014">
			<a href="http://www.jd.com/" class="logo"></a> <a href="#none"
				class="link2"><b></b>购物车</a>
		</div>
		<div class="cart-search">
			<div class="form">
				<input id="key" type="text" class="itxt" autocomplete="off"
					accesskey="s"> <input type="button" class="button"
					value="搜索" clstag="clickcart|keycount|xincart|cart_search"
					onclick="javascript:void(0);">
			</div>
		</div>
	</div>
	<!-- 分类购物车枚举 -->
	<!-- main -->
	<div id="container" class="cart" ecarddg="0" cartAlwaysDg="0" t="0">
		<div class="w">
			<div id="chunjie" class="mb10"></div>
			<div class="cart-filter-bar">
				<ul class="switch-cart">
					<li class="switch-cart-item curr"><a
						href="//cart.jd.com/cart.action"> <em>全部商品</em> <span
							class="number">2</span>
					</a></li>
					<li class="switch-cart-item ui-switchable-selected"><a
						class="" href="//cart.yiyaojd.com/cart"
						clstag="pageclick|keycount|cart_201610202|26"> <em>京东大药房</em>
					</a></li>
				</ul>
				<div class="cart-store">
					<input id="hiddenLocationId" type="hidden"> <input
						id="hiddenLocation" type="hidden"> <span class="label">配送至：</span>
					<div id="jdarea" class="ui-area-wrap">
						<div class="ui-area-text-wrap">
							<div class="ui-area-text"></div>
							<b> </b>
						</div>
						<div class="ui-area-content-wrap">
							<div class="ui-area-tab"></div>
							<div class="ui-area-content"
								clstag="clickcart|keycount|xincart|cart_changeArea"></div>
						</div>
					</div>
				</div>
				<div class="clr"></div>
				<div class="w-line">
					<div class="floater"></div>
				</div>
				<div class="tab-con"></div>
				<div class="tab-con hide"></div>
			</div>
		</div>
		<div class="cart-warp">
			<div class="w">
				<div id="jd-cart">
					<div class="cart-main cart-main-new">
						<div class="cart-thead">
							<!-- 我的冰箱 -->
							<div id="fridge-a" style="display: none">
								<a href="//cart.jd.com/myfridge.action"
									clstag="pageclick|keycount|cart_201610202|62"
									class="fridge-guide"><i></i></a>
							</div>
							<div class="column t-checkbox">
								<div class="cart-checkbox">
									<input type="checkbox" checked="checked"
										id="toggle-checkboxes_up" name="toggle-checkboxes"
										class="jdcheckbox"
										clstag="clickcart|keycount|xincart|cart_allCheck"> <label
										class="checked" for="">勾选全部商品</label>
								</div>
								全选
							</div>
							<div class="column t-goods">商品</div>
							<div class="column t-props"></div>
							<div class="column t-price">单价</div>
							<div class="column t-quantity">数量</div>
							<div class="column t-sum">小计</div>
							<div class="column t-action">操作</div>
						</div>
						<div id="cart-list">
							<input type="hidden" id="allSkuIds" value="34264174072,4564204" />
							<input type="hidden" id="outSkus" value="" /> <input
								type="hidden" id="isLogin" value="1" /> <input type="hidden"
								id="isNoSearchStockState" value="0" /> <input type="hidden"
								id="isNoDD" value="0" /> <input type="hidden" id="isNoCoupon"
								value="0" /> <input type="hidden" id="isFavoriteDowngrade"
								value="0" /> <input type="hidden" id="isUnmarketDowngrade"
								value="0" /> <input type="hidden" id="isPriceNoticeDowngrade"
								value="0" /> <input type="hidden" id="isInstallmentDowngrade"
								value="0" /> <input type="hidden" id="headNoticeDg" value="0" />
							<input type="hidden" id="isNoVenderFreight" value="0" /> <input
								type="hidden" id="isNoZyDelivery" value="0" /> <input
								type="hidden" id="isNoPopDelivery" value="0" /> <input
								type="hidden" id="isNoXzyf" value="0" /> <input type="hidden"
								id="isNoXzyfCd" value="0" /> <input type="hidden"
								id="isGiftServiceDowngrade" value="0" /> <input type="hidden"
								id="hiddenLocationId" /> <input type="hidden"
								id="hiddenLocation" /> <input type="hidden" id="ids"
								value="34264174072,4564204" /> <input type="hidden"
								id="isNgsdg" value="0" /> <input type="hidden" id="isCssdg"
								value="0" /> <input type="hidden" id="isCsudg" value="0" /> <input
								type="hidden" id="isRgdg" value="0" /> <input type="hidden"
								id="isOpdg" value="0" /> <input type="hidden" id="isYydg"
								value="0" /> <input type="hidden" id="overseasLoc" value="0" />
							<input type="hidden" id="isOadg" value="0" /> <input
								type="hidden" id="isMdxxdg" value="0" /> <input type="hidden"
								id="isWmdg" value="0" /> <input type="hidden" id="isLdg"
								value="0" /> <input type="hidden" id="isPsydg" value="0" /> <input
								type="hidden" id="isSgdg" value="0" /> <input type="hidden"
								id="isqqgdg" value="" /> <input type="hidden" id="iscardg"
								value="0" />
							<!-- 修改数量之前的值 -->
							<input type="hidden" id="changeBeforeValue" value="" /> <input
								type="hidden" id="changeBeforeId" value="" /> <input
								type="hidden" id="coord" value="" /> <input type="hidden"
								value="2" id="checkedCartState" /> <input type="hidden"
								value="2" id="overseaSelectedCount" /> <input type="hidden"
								value="0" id="noOverseaSelectedCount" /> <input type="hidden"
								value="123649" id="venderIds" /> <input type="hidden" value=""
								id="fictPopSkuIds" /> <input type="hidden" value="123649"
								id="fictVenderIds" /> <input type="hidden" value=""
								id="zySkuCid" /> <input type="hidden"
								value="34264174072_1425_1_1_true_123649_1,4564204_1425_1_1_true_8899_1"
								id="couponParam" /> <input type="hidden" value="123649"
								id="venderFreightIds" /> <input type="hidden" value="139.00"
								id="venderTotals" /> <input type="hidden" value="2" id="uclass" />
							<input type="hidden" value="0.00" id="freshTotalPrice"
								autocomplete="off" /> <input type="hidden" value="0.00"
								id="notFreshTotalPrice" autocomplete="off" /> <input
								type="hidden" value="0.00" id="walmartTotalPrice"
								autocomplete="off" /> <input type="hidden"
								value="1543676021014" id="currentTime" /> <input type="hidden"
								value="false" id="isShowDepreNotice" />
							<!-- 需要引用的全局信息 -->
							<div class="cart-item-list" id="cart-item-list-01">
								<div class="cart-tbody" id="vender_123649">
									<div class="shop">
										<div class="cart-checkbox">
											<input type="checkbox" checked="checked" name='checkShop'
												class="jdcheckbox"
												clstag="clickcart|keycount|xincart|cart_checkOn_shop">
											<label for="">勾选店铺内全部商品</label>
										</div>
										<span class="shop-txt"> <a class="shop-name"
											href="javascript:;" target="_blank" id="venderId_123649"
											clstag="clickcart|keycount|xincart|cart_shopName" shopId=0
											test="1"> 第三方商家 </a>
										</span>
										<div class="shop-extra-r" id="shop-extra-r_123649"
											checkedSkuIds="34264174072"></div>
									</div>
									<div class="item-list">
										<!--单品-->
										<!-- 单品-->
										<!-- 京配 -->
										<div class="item-single  item-item  item-selected "
											product="1" select="1" calop="1" id="product_34264174072"
											num="1" skuid="34264174072" venderid="123649" zy="false"
											flashpurchase="false" oversea="true" sid="1387" cid="1425"
											cm="" ts="1543667427665" cancelPlus="false" dt="3" shopid="0">
											<div class="item-form">
												<div class="cell p-checkbox">
													<div class="cart-checkbox">
														<!--单品-->
														<input p-type="34264174072_1" type="checkbox"
															name='checkItem' value="34264174072_1" checked="checked"
															data-bind="cbid" class="jdcheckbox"
															clstag="clickcart|keycount|xincart|cart_checkOn_sku">
														<label for="" class="checked">勾选商品</label> <span
															class="line-circle"></span>
													</div>
												</div>
												<div class="cell p-goods">
													<div class="goods-item">
														<div class="p-img">
															<a href="//item.jd.com/34264174072.html" target='_blank'
																class="J_zyyhq_34264174072"><img
																alt="魅可（M.A.C） 口红套装水漾润泽唇膏唇膏 #CHILI火热小辣椒 秀智款（哑光）"
																clstag="clickcart|keycount|xincart|cart_sku_pic"
																src="//img10.360buyimg.com/cms/s80x80_jfs/t28246/65/140620073/36943/1d426158/5be8e2f0N049f9b8f.jpg"></a>
														</div>
														<div class="item-msg">
															<div class="p-name">
																<a clstag="clickcart|keycount|xincart|cart_sku_name"
																	href="//item.jd.com/34264174072.html" target='_blank'>
																	<em class="jdint-icon-hd"></em>魅可（M.A.C） 口红套装水漾润泽唇膏唇膏
																	#CHILI火热小辣椒 秀智款（哑光）
																</a>
															</div>
															<div class="p-extend p-extend-new">
																<span class="promise" _yanbao="yanbao_34264174072_"
																	_service="service_34264174072_" isproduct="1"
																	style="display: none"></span>
															</div>
														</div>
													</div>
												</div>
												<div class="cell p-props p-props-new">
													<div class="props-txt" title="#CHILI火热小辣椒 秀智款（哑光）">颜色：#CHILI火热小辣椒
														秀智款（哑光）</div>
												</div>
												<div class="cell p-price p-price-new ">
													<p class="plus-switch">
														<strong>¥139.00</strong>
													</p>
													<div>
														<div class="clr"></div>
													</div>
													<p class="mt5" jj></p>
													<p class="mt5" bt></p>
												</div>
												<div class="cell p-quantity">
													<!--单品-->
													<div class="quantity-form">
														<a href="javascript:void(0);"
															clstag="clickcart|keycount|xincart|cart_num_down"
															class="decrement disabled"
															id="decrement_123649_34264174072_1_1">-</a> <input
															autocomplete="off" type="text" class="itxt" value="1"
															id="changeQuantity_123649_34264174072_1_1_0" minnum="1">
														<a href="javascript:void(0);"
															clstag="clickcart|keycount|xincart|cart_num_up"
															class="increment" id="increment_123649_34264174072_1_1_0">+</a>
													</div>
													<div class="ac ftx-03 quantity-txt"
														_stock="stock_34264174072"></div>
												</div>
												<div class="cell p-sum">
													<strong>¥139.00</strong>
												</div>
												<div class="cell p-ops">
													<!--单品-->
													<a id="remove_123649_34264174072_1"
														clstag="clickcart|keycount|xincart|cart_sku_del"
														data-name="魅可（M.A.C） 口红套装水漾润泽唇膏唇膏 #..."
														data-more="removed_139.00_1" class="cart-remove"
														href="javascript:void(0);">删除</a> <a
														href="javascript:void(0);" class="cart-follow"
														id="follow_123649_34264174072_1"
														clstag="clickcart|keycount|xincart|cart_sku_guanzhu">移到我的关注</a>
													<a href="javascript:void(0);" class="add-follow"
														id="add-follow_34264174072"
														clstag="pageclick|keycount|cart_201610202|32">加到我的关注</a>
												</div>
											</div>
											<div class="item-extra mb10">
												<!-- 落地配服务 -->
											</div>
											<div class="item-line"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="cart-item-list" id="cart-item-list-02">
								<div class="cart-tbody" id="vender_8899">
									<div class="shop">
										<div class="cart-checkbox">
											<input type="checkbox" checked="checked" name='checkShop'
												class="jdcheckbox"
												clstag="clickcart|keycount|xincart|cart_checkOn_shop">
											<label for="">勾选店铺内全部商品</label>
										</div>
										<span class="shop-txt"> <a class="shop-name"
											href="javascript:;" id="venderId_8899"
											clstag="pageclick|keycount|qqg_201507284|2"><span
												class="jint-s-site-hd">海囤全球</span></a>
										</span>
									</div>
									<div class="item-list">
										<!--单品-->
										<!-- 单品-->
										<!-- 京配 -->
										<div class="item-single  item-item  item-selected "
											product="1" select="1" calop="1" id="product_4564204" num="3"
											skuid="4564204" venderid="8899" zy="false"
											flashpurchase="false" oversea="true" sid="1387" cid="1425"
											cm="" ts="1543667352882" cancelPlus="false" dt="10">
											<div class="item-form">
												<div class="cell p-checkbox">
													<div class="cart-checkbox">
														<!--单品-->
														<input p-type="4564204_1" type="checkbox" name='checkItem'
															value="4564204_1" checked="checked" data-bind="cbid"
															class="jdcheckbox"
															clstag="clickcart|keycount|xincart|cart_checkOn_sku">
														<label for="" class="checked">勾选商品</label> <span
															class="line-circle"></span>
													</div>
												</div>
												<div class="cell p-goods">
													<div class="goods-item">
														<div class="p-img">
															<a href="//item.jd.com/4564204.html" target='_blank'
																class="J_zyyhq_4564204"><img
																alt="魅可（MAC)经典唇膏  子弹头口红3g Chili 秀智色/小辣椒色"
																clstag="clickcart|keycount|xincart|cart_sku_pic"
																src="//img10.360buyimg.com/cms/s80x80_jfs/t21946/165/1208592477/32181/1ecee077/5b226dd4N211675fa.jpg"></a>
														</div>
														<div class="item-msg">
															<div class="p-name">
																<a clstag="clickcart|keycount|xincart|cart_sku_name"
																	href="//item.jd.com/4564204.html" target='_blank'>
																	<em class="selection-icon"></em>魅可（MAC)经典唇膏 子弹头口红3g
																	Chili 秀智色/小辣椒色
																</a>
															</div>
															<div class="p-extend p-extend-new">
																<span class="promise" _yanbao="yanbao_4564204_"
																	_service="service_4564204_" isproduct="1"
																	style="display: none"></span>
															</div>
														</div>
													</div>
												</div>
												<div class="cell p-props p-props-new">
													<div class="props-txt" title="Chili 秀智色/小辣椒色">颜色：Chili
														秀智色/小辣椒色</div>
												</div>
												<div class="cell p-price p-price-new ">
													<p class="plus-switch">
														<strong>¥159.00</strong>
													</p>
													<div>
														<div class="clr"></div>
													</div>
													<p class="mt5" jj></p>
													<p class="mt5" bt></p>
												</div>
												<div class="cell p-quantity">
													<!--单品-->
													<div class="quantity-form">
														<a href="javascript:void(0);"
															clstag="clickcart|keycount|xincart|cart_num_down"
															class="decrement " id="decrement_8899_4564204_3_1">-</a>
														<input autocomplete="off" type="text" class="itxt"
															value="3" id="changeQuantity_8899_4564204_3_1_0"
															minnum="1"> <a href="javascript:void(0);"
															clstag="clickcart|keycount|xincart|cart_num_up"
															class="increment" id="increment_8899_4564204_3_1_0">+</a>
													</div>
													<div class="ac ftx-03 quantity-txt" _stock="stock_4564204"></div>
												</div>
												<div class="cell p-sum">
													<strong>¥477.00</strong>
												</div>
												<div class="cell p-ops">
													<!--单品-->
													<a id="remove_8899_4564204_1"
														clstag="clickcart|keycount|xincart|cart_sku_del"
														data-name="魅可（MAC)经典唇膏  子弹头口红3g Chili ..."
														data-more="removed_159.00_3" class="cart-remove"
														href="javascript:void(0);">删除</a> <a
														href="javascript:void(0);" class="cart-follow"
														id="follow_8899_4564204_1"
														clstag="clickcart|keycount|xincart|cart_sku_guanzhu">移到我的关注</a>
													<a href="javascript:void(0);" class="add-follow"
														id="add-follow_4564204"
														clstag="pageclick|keycount|cart_201610202|32">加到我的关注</a>
												</div>
											</div>
											<div class="item-extra mb10">
												<!-- 落地配服务 -->
											</div>
											<div class="item-line"></div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" id="isSsgdg" value="0" />
						</div>
					</div>
				</div>
				<div id="cart-floatbar">
					<div class="cart-toolbar">
						<div class="toolbar-wrap">
							<div class="selected-item-list hide"></div>
							<div class="options-box">
								<div class="select-all">
									<div class="cart-checkbox">
										<input type="checkbox" id="toggle-checkboxes_down"
											name="toggle-checkboxes" class="jdcheckbox"
											clstag="clickcart|keycount|xincart|cart_allCheckDown">
										<label class="checked" for="">勾选全部商品</label>
									</div>
									全选
								</div>
								<div class="operation">
									<a href="#none"
										clstag="clickcart|keycount|xincart|cart_somesku_del"
										class="remove-batch">删除选中的商品</a> <a href="#none"
										class="follow-batch"
										clstag="clickcart|keycount|xincart|cart_somesku_guanzhu">移到我的关注</a>
									<a href="#none" class="cleaner-opt J_clr_all"
										title="亲，点我可快速清理购物车商品哦！">清理购物车</a>
								</div>
								<div class="clr"></div>
								<div class="toolbar-right">
									<div class="normal">
										<div class="comm-right">
											<div class="btn-area">
												<a href="javascript:void(0);" onclick="return false;"
													clstag="clickcart|keycount|xincart|cart_gotoOrder"
													class="submit-btn"> 去结算<b></b></a>
											</div>
											<div class="price-sum">
												<div>
													<span class="txt txt-new">总价：</span> <span
														class="price sumPrice"><em>¥616.00</em></span> <b
														class="ml5 price-tips"></b>
													<div class="price-tipsbox"
														style="display: none; left: 159.85px;">
														<div class="ui-tips-main">不含运费及送装服务费</div>
														<span class="price-tipsbox-arrow"></span>
													</div>
													<br> <span class="txt">已节省：</span> <span
														class="price totalRePrice">-¥0.00</span>
												</div>
											</div>
											<div class="amount-sum">
												已选择<em>4</em>件商品<b class="up"
													clstag="clickcart|keycount|xincart|cart_thumbnailOpen"></b>
											</div>
											<div class="clr"></div>
										</div>
									</div>
									<div class="combine">
										<div class="comm-right">
											<div class="btn-area">
												<a href="javascript:void(0);" onclick="return false;"
													clstag="clickcart|keycount|xincart|cart_gotoOrderOut"
													class="jdInt-submit-btn-hd"> 去海囤全球结算<b></b></a> <a
													href="javascript:void(0);" onclick="return false;"
													clstag="clickcart|keycount|xincart|cart_gotoOrder"
													class="common-submit-btn"> 去京东结算<b></b></a>
											</div>
											<div class="price-sum">
												<div>
													<span class="txt txt-new">总价：</span> <span
														class="price sumPrice"><em>¥616.00</em></span> <b
														class="ml5 price-tips"></b>
													<div class="price-tipsbox"
														style="display: none; left: 159.85px;">
														<div class="ui-tips-main">不含运费及送装服务费</div>
														<span class="price-tipsbox-arrow"></span>
													</div>
													<br> <span class="txt">已节省：</span> <span
														class="price totalRePrice">- ¥0.00</span>
												</div>
											</div>
											<div class="amount-sum">
												已选择<em>4</em>件商品<b class="up"></b>
											</div>
											<div class="clr"></div>
										</div>
										<div class="clr"></div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="cart-removed">
					<div class="r-tit">已删除商品，您可以重新购买或加关注：</div>
				</div>
			</div>
		</div>
		<div class="w">
			<div id="cart-smart"></div>
		</div>
		<div class="w">
			<div class="m m1" id="c-tabs-new">
				<div class="mt">
					<div class="extra-l">
						<a href="#none" class="c-item curr">猜你喜欢</a> <a href="#none"
							class="c-item">我的关注</a>
					</div>
					<div class="extra-r"></div>
				</div>
				<div class="mc c-panel-main">
					<div class="c-panel" id="guess-products"></div>
					<div class="c-panel" id="favorite-products"></div>
				</div>
			</div>
		</div>
		<div class="w"></div>
	</div>
	<input id="hidebx" type="hidden" value="0">
	<input type="hidden" id="isMiscdg" value="0" />
	<input type="hidden" id="hideMiscls" value="0" />
	<!-- /main -->

	<!--service start-->
	<div id="service-2017">
		<div class="w">
			<ol class="slogen">
				<li class="item fore1"><i>多</i>品类齐全，轻松购物</li>
				<li class="item fore2"><i>快</i>多仓直发，极速配送</li>
				<li class="item fore3"><i>好</i>正品行货，精致服务</li>
				<li class="item fore4"><i>省</i>天天低价，畅选无忧</li>
			</ol>
		</div>
		<div class="jd-help">
			<div class="w">
				<div class="wrap">
					<dl class="fore1">
						<dt>购物指南</dt>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-29.html">购物流程</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-151.html">会员介绍</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue.html">常见问题</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-136.html">大家电</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/index.html">联系客服</a>
						</dd>
					</dl>
					<dl class="fore2">
						<dt>配送方式</dt>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-81-100.html">上门自提</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-81.html">211限时达</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/103-983.html">配送服务查询</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a>
						</dd>
						<dd>
							<a target="_blank"
								href="//help.joybuy.com/help/question-list-201.html">海外配送</a>
						</dd>
					</dl>
					<dl class="fore3">
						<dt>支付方式</dt>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-172.html">货到付款</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-173.html">在线支付</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-176.html">分期付款</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-174.html">邮局汇款</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-175.html">公司转账</a>
						</dd>
					</dl>
					<dl class="fore4">
						<dt>售后服务</dt>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/321-981.html">售后政策</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-132.html">价格保护</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/130-978.html">退款说明</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//myjd.jd.com/repair/repairs.action">返修/退换货</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-50.html">取消订单</a>
						</dd>
					</dl>
					<dl class="fore5">
						<dt>特色服务</dt>
						<dd>
							<a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a>
						</dd>
						<dd>
							<a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank"
								href="//o.jd.com/market/index.action">京东E卡</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank" href="//mobile.jd.com/">京东通信</a>
						</dd>
						<dd>
							<a rel="nofollow" target="_blank" href="//s.jd.com/">京东JD+</a>
						</dd>
					</dl>
					<span class="clr"></span>
				</div>
			</div>
		</div>
	</div>
	<!--service end-->
	<!--footer start-->
	<div id="footer-2017">
		<div class="w">
			<div class="copyright_links">
				<p>
					<a href="//about.jd.com" target="_blank">关于我们</a><span
						class="copyright_split">|</span> <a href="//about.jd.com/contact/"
						target="_blank">联系我们</a><span class="copyright_split">|</span> <a
						href="//help.jd.com/user/custom.html" target="_blank">联系客服</a><span
						class="copyright_split">|</span> <a
						href="//vc.jd.com/cooperation.html" target="_blank">合作招商</a><span
						class="copyright_split">|</span> <a
						href="//helpcenter.jd.com/venderportal/index.html" target="_blank">商家帮助</a><span
						class="copyright_split">|</span> <a href="//jzt.jd.com"
						target="_blank">营销中心</a><span class="copyright_split">|</span> <a
						href="//app.jd.com/" target="_blank">手机京东</a><span
						class="copyright_split">|</span> <a
						href="//club.jd.com/links.aspx" target="_blank">友情链接</a><span
						class="copyright_split">|</span> <a href="//media.jd.com/"
						target="_blank">销售联盟</a><span class="copyright_split">|</span> <a
						href="//club.jd.com/" target="_blank">京东社区</a><span
						class="copyright_split">|</span> <a
						href="//sale.jd.com/act/FTrWPesiDhXt5M6.html" target="_blank">风险监测</a><span
						class="copyright_split">|</span> <a href="//about.jd.com/privacy/"
						target="_blank">隐私政策</a><span class="copyright_split">|</span> <a
						href="//gongyi.jd.com" target="_blank">京东公益</a><span
						class="copyright_split">|</span> <a href="//en.jd.com/"
						target="_blank">English Site</a><span class="copyright_split">|</span>
					<a href="//corporate.jd.com/" target="_blank">Media & IR</a>
				</p>
			</div>
			<div class="copyright_info">
				<p>
					<a
						href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088"
						target="_blank">京公网安备 11000002000088号</a><span
						class="copyright_split">|</span><span>京ICP证070359号</span><span
						class="copyright_split">|</span> <a
						href="//img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg"
						target="_blank">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a><span
						class="copyright_split">|</span><span>新出发京零 字第大120007号</span>
				</p>
				<p>
					<span>互联网出版许可证编号新出网证(京)字150号</span><span class="copyright_split">|</span>
					<a href="//sale.jd.com/act/pQua7zovWdJfcIn.html" target="_blank">出版物经营许可证</a><span
						class="copyright_split">|</span> <a
						href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a><span
						class="copyright_split">|</span><span>违法和不良信息举报电话：4006561155</span>
				</p>
				<p>
					<span class="copyright_text">Copyright &copy; 2004 - <em
						id="copyright_year">2018</em> 京东JD.com 版权所有
					</span><span class="copyright_split">|</span><span>消费者维权热线：4006067733</span>
					<a href="//sale.jd.com/act/7Y0Rp81MwQqc.html" target="_blank"
						class="copyright_license">经营证照</a> <span class="copyright_split">|</span>
					<span>(京)网械平台备字(2018)第00003号</span> <span class="copyright_split">|</span>
					<a
						href="//storage.jd.com/imgtools/cbdaa22553-dccaf290-d1af-11e8-a840-89f99f5f0056.jpeg"
						target="_blank" class="mod_business_license">营业执照</a>
				</p>
				<p class="mod_copyright_inter">
					<a class="mod_copyright_inter_lk"
						href="//www.joybuy.com/?source=1&visitor_from=3" target="_blank"
						clstag="h|keycount|btm|btmnavi_null0501"><i
						class="mod_copyright_inter_ico mod_copyright_inter_ico_global"></i><span
						class="languagefont">&#xe901;</span></a> <span class="copyright_split">|</span>
					<a class="mod_copyright_inter_lk"
						href="//www.jd.ru/?source=1&visitor_from=3" target="_blank"
						clstag="h|keycount|btm|btmnavi_null0502"><i
						class="mod_copyright_inter_ico mod_copyright_inter_ico_rissia"></i><span
						class="languagefont">&#xe904;</span></a> <span class="copyright_split">|</span>
					<a class="mod_copyright_inter_lk"
						href="//www.jd.id/?source=1&visitor_from=3" target="_blank"
						clstag="h|keycount|btm|btmnavi_null0503"><i
						class="mod_copyright_inter_ico mod_copyright_inter_ico_indonesia"></i><span
						class="languagefont">&#xe902;</span></a> <span class="copyright_split">|</span>
					<a class="mod_copyright_inter_lk"
						href="//www.joybuy.es/?source=1&visitor_from=3" target="_blank"
						clstag="h|keycount|btm|btmnavi_null0504"><i
						class="mod_copyright_inter_ico mod_copyright_inter_ico_spain"></i><span
						class="languagefont">&#xe903;</span></a> <span class="copyright_split">|</span>
					<a class="mod_copyright_inter_lk"
						href="//www.jd.co.th/?source=1&visitor_from=3" target="_blank"
						clstag="h|keycount|btm|btmnavi_null0505"><i
						class="mod_copyright_inter_ico mod_copyright_inter_ico_thailand"></i><span
						class="languagefont">&#xe900;</span></a>
				</p>
				<p>
					<span>京东旗下网站：</span> <a href="https://www.jdpay.com/"
						target="_blank">京东钱包</a><span class="copyright_split">|</span> <a
						href="http://www.jcloud.com" target="_blank">京东云</a>
				</p>
			</div>
			<p class="copyright_auth">
				<script type="text/JavaScript">
					function CNNIC_change(eleId) {
						var str = document.getElementById(eleId).href;
						var str1 = str.substring(0, (str.length - 6));
						str1 += CNNIC_RndNum(6);
						document.getElementById(eleId).href = str1;
					}
					function CNNIC_RndNum(k) {
						var rnd = "";
						for (var i = 0; i < k; i++)
							rnd += Math.floor(Math.random() * 10);
						return rnd;
					};
					(function() {
						var d = new Date;
						document.getElementById("copyright_year").innerHTML = d
								.getFullYear()
					})();
				</script>
				<a id="urlknet" class="copyright_auth_ico copyright_auth_ico_2"
					onclick="CNNIC_change('urlknet')" oncontextmenu="return false;"
					name="CNNIC_seal"
					href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005"
					target="_blank">可信网站信用评估</a> <a
					class="copyright_auth_ico copyright_auth_ico_3"
					href="http://www.cyberpolice.cn/" target="_blank">网络警察提醒你</a> <a
					class="copyright_auth_ico copyright_auth_ico_4"
					href="https://search.szfw.org/cert/l/CX20120111001803001836"
					target="_blank">诚信网站</a> <a
					class="copyright_auth_ico copyright_auth_ico_5"
					href="http://www.12377.cn" target="_blank">中国互联网举报中心</a> <a
					class="copyright_auth_ico copyright_auth_ico_6"
					href="http://www.12377.cn/node_548446.htm" target="_blank">网络举报APP下载</a>
			</p>
		</div>
	</div>
	<!--footer end-->
	<script type="text/javascript"
		src="//cart.jd.com/js/config.js?v=201706071626"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/cart/js/cart-recommend.js?v=201702131415"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/cart/js/ceilinglamp.js?v=201408281121"></script>
	<script type="text/javascript"
		src="//static.360buyimg.com/im/js/cart/im_cart_v1.js?v=201509101804"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/cart/widget/??no-login/no-login.js"></script>
	<script type="text/javascript">
		seajs.use("/js/cart.new.js?v=201801162217");
	</script>
	<!--统计代码 -->
	<script type="text/javascript">
		(function() {
			var ja = document.createElement('script');
			ja.type = 'text/javascript';
			ja.async = true;
			ja.src = '//wl.jd.com/wl.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ja, s);
		})();
	</script>
	<script src="//gias.jd.com/js/td.js"></script>
	<script src="//h5.360buyimg.com/ws_js/jdwebm.js?v=pcCart"></script>
	<script language="JavaScript">
		try {
			var eid, fp;
			getJdEid(function(a, b, udfp) {
				eid = a;
				fp = b;
			});
			var shfp = getFingerPrint();
		} catch (e) {
		}
	</script>
	<!-- 公共头尾js end -->
	<OBJECT ID="ddplugin-msie"
		CLASSID="CLSID:B35D742C-5983-40C1-A8C0-A7DBFA2EF05E" width="0"
		height="0"></OBJECT>
	<embed id="ddplugin" type="application/dd-plugin" width="0" height="0">
</body>
</html>