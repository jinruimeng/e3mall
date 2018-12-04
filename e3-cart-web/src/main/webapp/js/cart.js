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
		var oneCheck = $("input[name='cart_list']");
		var _this;
		for(var i=0;i<oneCheck.length;i++){
			if(oneCheck.eq(i).is(':checked') == true){
				_this = oneCheck.eq(i).parent().parent().find(".itemnum").eq(0);
				total += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
			}
		}
//		 $(document.getElementsByName("cart_list").checked).each(function(i,e){
//					var _this = $(e).parent().parent().find(".itemnum").eq(0);
//					total += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
//		 });
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

// 单选
function singleselect(itemId){
	// alert(JSON.stringify($("input[name='cart_list']").parent().parent().find('.itemnum').eq(0).siblings('input')));
//	alert(itemId);
	var oneCheck = $("input[name='cart_list']");
	var status;
    for(var i=0;i<oneCheck.length;i++){
    	var _thisInput = oneCheck.eq(i).parent().parent().find(".itemnum").eq(0);
//    	alert(_thisInput.attr('itemId'));
    	if(_thisInput.attr('itemId') == itemId){
            if(oneCheck.eq(i).is(':checked') == true){
            	status = 1;
                $.post("/cart/update/status/"+_thisInput.attr("itemId")+"/" + status + ".action");
            }else{
            	status = 0;
            	$.post("/cart/update/status/"+_thisInput.attr("itemId")+"/" + status + ".action");
            }
    	}
    }
    CART.refreshAllShopePrice();
}

// 全选
function allselect(){
	// alert($("input[name='acart_list_check']").is(':checked'));
	var oneCheck = $("input[name='cart_list']");
	var status;
// alert("到这儿！");
	if($("input[name='acart_list_check']").is(':checked') == true){
		// alert("到这儿！！");
		status = 1;
        for(var i=0;i<oneCheck.length;i++){
 // alert(oneCheck.eq(i).is(':checked'));
// alert("到这儿！！！");
        	if(oneCheck.eq(i).is(':checked') == false){
// alert("到这儿！！！！");
// alert(oneCheck.eq(i).is(':checked'));
// oneCheck.eq(i).prop("checked",true);
        		oneCheck.eq(i).attr("checked","checked");
// alert(oneCheck.eq(i).is(':checked'));
                var _thisInput = oneCheck.eq(i).parent().parent().find(".itemnum").eq(0);
                $.post("/cart/update/status/"+_thisInput.attr("itemId")+"/" + status + ".action");
        	}
        }
        CART.refreshAllShopePrice();
    }else{
    	status = 0;
    	for(var i=0;i<oneCheck.length;i++){
        	if(oneCheck.eq(i).is(':checked') == true){
// alert("到这儿了！");
// oneCheck.eq(i).prop("checked",false);
// alert(oneCheck.eq(i).is(':checked'));
        		oneCheck.eq(i).attr("checked",false);
// alert(oneCheck.eq(i).is(':checked'));
                var _thisInput = oneCheck.eq(i).parent().parent().find(".itemnum").eq(0);
                $.post("/cart/update/status/"+_thisInput.attr("itemId")+"/" + status + ".action");
        	}
        }
        // 反选总价清零
        $("#allMoney2").html(0).priceFormat({ // 价格格式化插件
			 prefix: '¥',
			 thousandsSeparator: ',',
			 centsLimit: 2
		});
//        alert("else结束");
    }
//	alert("到最后了！");
}