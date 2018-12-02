var CART = {
	itemNumChange : function(){
		$(".increment").click(function(){// ＋
			var _thisInput = $(this).siblings("input");
			_thisInput.val(eval(_thisInput.val()) + 1);
			$.post("/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice(data);
				CART.refreshAllShopePrice();
			});
		});
		$(".decrement").click(function(){// -
			var _thisInput = $(this).siblings("input");
			if(eval(_thisInput.val()) == 1){
				return ;
			}
			_thisInput.val(eval(_thisInput.val()) - 1);
			$.post("/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice(data);
				CART.refreshAllShopePrice();
			});
		});
		/*
		 * $(".itemnum").change(function(){ var _thisInput = $(this);
		 * $.post("/service/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val(),function(data){
		 * CART.refreshTotalPrice(data); CART.refreshAllShopePricee(); }); });
		 */
	},

	// 单选
	selecsingle : function(){
		$('.putong').click(function(){
			var _thisInput = $(this).parent('div').parent('div').find(".itemnum").siblings("input");
			if($(this).attr("checked") == "checked"){
	            $.post("/cart/update/status/"+_thisInput.attr("itemId")+"/1"+ ".action");
			}else{
				$.post("/cart/update/status/"+_thisInput.attr("itemId")+"/0"+ ".action");
			}
			CART.refreshAllShopePrice();
		});
	},
	
	// 全选
	selectall : function(){
		$('#Zall').click(function(){
			if(document.getElementById("Zall").checked){
		        var oneCheck = $("input[name='cart_list']");
		        for(var i=0;i<oneCheck.length;i++){
		            oneCheck[i].prop("checked", true);
		            // oneCheck.eq(i).prop("checked",true);
		            var _thisInput = $(this).parent('div').find(".itemnum").eq(i).siblings("input");
		            $.post("/cart/update/status/"+_thisInput.attr("itemId")+"/1"+ ".action");
		        }
		        refreshAllShopePrice();       
		    }else{
		        var oneCheck = $("input[name='cart_list']");
		        for(var i=0;i<oneCheck.length;i++){
		            // oneCheck[i].checked = false;
		            oneCheck[i].removeAttr("checked");
		            var _thisInput = $(this).parent('div').find(".itemnum").eq(i).siblings("input");
		            oneCheck[i].checked = true;
		            // oneCheck.eq(i).prop("checked","checked");
		            var _thisInput = $(this).parent('div').parent('div').find(".itemnum").siblings("input");
		            $.post("/cart/update/status/"+_thisInput.attr("itemId")+"/1"+ ".action");
		        }
		        // 反选总价清零
		        $("#allMoney2").html(0).priceFormat({ // 价格格式化插件
					 prefix: '¥',
					 thousandsSeparator: ',',
					 centsLimit: 2
				});
		    }
		});
	},
		
	refreshTotalPrice : function(itemId){ // 重新计算小计
		var subtotal = 0;
		$(".itemnum").each(function(i,e){
            var _this = $(e);
            // alert(_this.attr("itemId"));
            // alert(itemId);
            if(_this.attr("itemId") == itemId){
            	subtotal += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
            }
        });
        $("#total_price"+itemId).html(new Number(subtotal/100).toFixed(2)).priceFormat({ // 价格格式化插件
            prefix: '¥',
            thousandsSeparator: ',',
            centsLimit: 2
        });
	},
	
	refreshAllShopePrice : function(){ // 重新计算总价
		var total = 0;
		 $(document.getElementsByName("cart_list").checked).each(function(i,e){
// $(".itemnum").each(function(i,e){
					var _this = $(e).parent('div').parent('div').find(".itemnum");
					total += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
// });
		 });
		$("#allMoney2").html(new Number(total/100).toFixed(2)).priceFormat({ // 价格格式化插件
			 prefix: '¥',
			 thousandsSeparator: ',',
			 centsLimit: 2
		});
	}
};
	
$(function(){
	CART.itemNumChange();
});