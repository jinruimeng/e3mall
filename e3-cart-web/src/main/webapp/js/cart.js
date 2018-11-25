var CART = {
	itemNumChange : function(){
		$(".increment").click(function(){//＋
			var _thisInput = $(this).siblings("input");
			_thisInput.val(eval(_thisInput.val()) + 1);
			$.post("/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice(data);
				CART.refreshAllShopePrice();
			});
		});
		$(".decrement").click(function(){//-
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
		/*$(".itemnum").change(function(){
			var _thisInput = $(this);
			$.post("/service/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val(),function(data){
				CART.refreshTotalPrice(data);
				CART.refreshAllShopePricee();
			});
		});*/
	},
	
	refreshTotalPrice : function(itemId){ //重新计算小计
		var subtotal = 0;
		$(".itemnum").each(function(i,e){
            var _this = $(e);
            // alert(_this.attr("itemId"));
            // alert(itemId);
            if(_this.attr("itemId") == itemId){
            	subtotal += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
            }
        });
        $("#total_price"+itemId).html(new Number(subtotal/100).toFixed(2)).priceFormat({ //价格格式化插件
            prefix: '¥',
            thousandsSeparator: ',',
            centsLimit: 2
        });
	},
	
	refreshAllShopePrice : function(){ //重新计算总价
		var total = 0;
		$(".itemnum").each(function(i,e){
			var _this = $(e);
			total += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
		});
		$("#allMoney2").html(new Number(total/100).toFixed(2)).priceFormat({ //价格格式化插件
			 prefix: '¥',
			 thousandsSeparator: ',',
			 centsLimit: 2
		});
	}
};

$(function(){
	CART.itemNumChange();
});