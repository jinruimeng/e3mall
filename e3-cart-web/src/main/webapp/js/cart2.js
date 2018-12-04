//删除多个选择商品
function cartDelMore(){
  jConfirm("确定删除选中的商品？", '提示消息', function(r){
    if (r){
//      $("input[name='cart_list']:checked").each(function(){ 	  
//      });
      var oneCheck = $("input[name='cart_list']");
      var _thisInput;
      for(var i=0;i<oneCheck.length;i++){
    	  if(oneCheck.eq(i).is(':checked') == true){
    		  _thisInput = oneCheck.eq(i).parent().parent().find(".itemnum").eq(0);
				$.post("/cart/deleteProduces/"+_thisInput.attr("itemId")+".action");
			}
		}
      setTimeout("javascript:location.href='/cart/cart.html'", 2000);
//      window.location.href="/cart/cart.html";
    }else{
      return false;
    }
  });
}

/**
 * 清空购物车
 */
function delAll(){
  jConfirm("确定清空购物车中的全部商品？", '提示消息', function(r){
    if(r){
    	 var oneCheck = $("input[name='cart_list']");
         var _thisInput;
         for(var i=0;i<oneCheck.length;i++){
        	 _thisInput = oneCheck.eq(i).parent().parent().find(".itemnum").eq(0);
   				$.post("/cart/deleteProduces/"+_thisInput.attr("itemId")+".action");
   		}
        setTimeout("javascript:location.href='/cart/cart.html'", 1500);
//        window.location.href="/cart/cart.html";	
    }else {
    	return false;
    }
  });
}
/*//最上部全选
function Zall(obj){
  var checked = '';
  $("input[name^='cart_list']").attr('checked',$(obj).attr('checked'))
    if($(obj).attr('checked')){
      checked = 'checked';
    }
  selectAll(checked,0);
}

//普通商品全选
function PutongAll(obj){
  var checked = '';
  $(".putong").attr('checked',$(obj).attr('checked'));
    if($(obj).attr('checked')){
      checked = 'checked';
    }
  selectAll(checked,1);
}
//直采商品全选
function SfvAll(obj){
  var checked = '';
  $(".zhicai").attr('checked',$(obj).attr('checked'));
    if($(obj).attr('checked')){
      checked = 'checked';
    }
  selectAll(checked,2);
}
//海淘商品全选
function HaitaoAll(obj){
  var checked = '';
  $(".haitao").attr('checked',$(obj).attr('checked'));
  if($(obj).attr('checked')){
    checked = 'checked';
  }
  selectAll(checked,3);
}*/