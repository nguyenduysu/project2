document.addEventListener("DOMContentLoaded",function(){
 function formatNumber(nStr, decSeperate, groupSeperate) {  // fomart price
        nStr += '';
        x = nStr.split(decSeperate);
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
        }
        return x1 + x2;
        }
 function isEmail(email) {     //check email
			var isValid = false;
			var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if(regex.test(email)) {
				isValid = true;
			}
			return isValid;
		}
    $('body').on('click','#plus',function () {    // when click plus
	     var statusInCart=parseInt($(this).next().val()), 
	         elementQuantity=$(this).prev().prev(),
			 sl = parseInt(elementQuantity.val()),
			 id_product=parseInt($(this).prev().val());
			 pGoc=$(this).parent().parent().parent().prev().find('.pGoc').val();
			 pKM=$(this).parent().parent().parent().prev().find('.pKM').val();
	         giaAdd=parseInt((pKM>0)?pKM:pGoc);       
        if(sl<5){
        	$.ajax({
			url: '/project2/Home/addToCart',
			type: 'POST',
			data: {id:id_product, sl:1}
		})
		.done(function() {
		})
		.fail(function() {
		})
		.always(function(data) {
			x = data.indexOf(">");
			data = data.slice(x+1, data.length);
			data = JSON.parse(data);
		if (data=='expired') {
			alert('Xin lỗi số lượng sản phẩm bạn chọn không đủ cung cấp.Vui lòng chọn ít hơn hoặc chọn sản phẩm khác');
		}else{
			sl+=1;
			elementQuantity.val(sl);
			slAll=parseInt($('#sl').html()); //quantity all product on view icon
			slAll+=1;
			$('#sl').html(slAll); 
			pAll=parseInt($('#allPrice').val());
			pAll+=giaAdd;  //price all
			$('#allPrice').val(pAll);
			if (statusInCart==1) {
				slspCheck=parseInt($('#slspCheck').html()); //quantity in order
				slspCheck++;
				$('#slspCheck').html(slspCheck);
				prices=parseInt($('#prices').val());  //price in order
				prices+=giaAdd;
				$('#prices').val(prices); 
				hThi1=formatNumber(prices, '.', '.');
				$('#giagoc').html(hThi1+'₫');  
	    		 phiship=(prices>=500000||slspCheck==0)?0:50000;
	    		 hThi2=formatNumber(phiship, '.', '.');
	    		 $('#phiship').html(hThi2+'₫');
	    		 priEnd=prices+phiship;
	    		 hThi3=formatNumber(priEnd, '.', '.');
	    		 $('#priceEnd').html(hThi3+'₫');  
			}
		    }
		    });	
        }
	}); //end plus
 $('body').on('click','#minus',function () {    // minus
     var statusInCart=parseInt($(this).next().next().next().next().val()),
         elementQuantity=$(this).next(),
		 sl = parseInt(elementQuantity.val()),
		 id_product=parseInt($(this).next().next().val()),
		 pGoc=$(this).parent().parent().parent().prev().find('.pGoc').val(),
		 pKM=$(this).parent().parent().parent().prev().find('.pKM').val();
         giaAdd=parseInt((pKM>0)?pKM:pGoc);        
        if(sl>1){
        	$.ajax({
			url: '/project2/Home/editQuantity',
			type: 'POST',
			data: {id:id_product}
		})
		.done(function() {
		})
		.fail(function() {
		}) 
		.always(function() {
			sl-=1;
			elementQuantity.val(sl);
			slAll=parseInt($('#sl').html()); 
			slAll-=1;
			$('#sl').html(slAll); 
			pAll=parseInt($('#allPrice').val());
			pAll-=giaAdd;  
			$('#allPrice').val(pAll);
			if (statusInCart==1) {
				slspCheck=parseInt($('#slspCheck').html()); 
				slspCheck--;
				$('#slspCheck').html(slspCheck);
				prices=parseInt($('#prices').val());
				prices-=giaAdd;
				$('#prices').val(prices); 
				hThi1=formatNumber(prices, '.', '.');
				$('#giagoc').html(hThi1+'₫');  
				phiship=(prices>=500000||slspCheck==0)?0:50000;
	    		hThi2=formatNumber(phiship, '.', '.');
	    		$('#phiship').html(hThi2+'₫');
	    		priEnd=prices+phiship;
	    		hThi3=formatNumber(priEnd, '.', '.');
	    		$('#priceEnd').html(hThi3+'₫');  
			}
		    });	
        }
	}); // end minus
 	$('body').on('click','.nutxoa',function () {    	//remove product
	 var total=parseInt($('#sl').html());          	    //all quantity product
         sl_remove=parseInt($(this).parent().parent().parent().next().next().find('#sl_add').val());          
         pGoc=$(this).parent().parent().parent().next().find('.pGoc').val();
         pKM=$(this).parent().parent().parent().next().find('.pKM').val();
         giaremove=parseInt((pKM>0)?pKM:pGoc);        
         statusInCart=parseInt($(this).parent().parent().parent().next().next().find('.statusInCart').val());
         elementAdd=$('.add');
		 yes= confirm('Bạn có đồng ý loại bỏ sản phẩm này khỏi giỏ hàng ?'); 
		if (yes) {
			id_xoa=$(this).val();
			element=$(this).parent().parent().parent().parent();
			element.remove();
			$.ajax({
				url: '/project2/Home/removeProductInCart',
				type: 'POST',
				data: {id: id_xoa}
			})
			.done(function() {
			})
			.fail(function() {
			})
			.always(function() {
			    total-=sl_remove;         
	            $('#sl').html(total);              
	            priAll=parseInt($('#allPrice').val());  
	            priAll=priAll-(giaremove*sl_remove);
	            $('#allPrice').val(priAll);          //update price all product
	            if (total==0) {                     
				$('.listCart').remove();
				nd='<div class="container text-center giotrong">';
				nd+='<div class="row">';
				nd+='<p>Không có sản phẩm nào trong giỏ hàng</p>';
				nd+='<a class="btn btn-danger" href="/project2/Home">Tiếp tục mua sắm</a>';
				nd+='</div>';
				nd+='</div>';
				elementAdd.append(nd);
		        }
				if (statusInCart !=0) {          //remove product checked
		         pri=giaremove*sl_remove;      
		         priHtai=parseInt($('#prices').val());  
			     priHtai-=pri;
			     $('#prices').val(priHtai); 
			     hThi1=formatNumber(priHtai, '.', '.');
			     $('#giagoc').html(hThi1+'₫');  
			     slsp_check=parseInt($('#slspCheck').html());  
			     slspEnd=slsp_check-sl_remove;
			     $('#slspCheck').html(slspEnd);
			     phiship=(priHtai>=500000||slspEnd==0)?0:50000;  
	    		 hThi2=formatNumber(phiship, '.', '.');
	    		 $('#phiship').html(hThi2+'₫');
	    		 priEnd=priHtai+phiship;
	    		 hThi3=formatNumber(priEnd, '.', '.');
	    		 $('#priceEnd').html(hThi3+'₫');  
			 }	
       });
       } 
        }); //end remove
 	$('#all_check').change(function() {	      // click check all
	var status=this.checked;                               
	$('.check').each(function() {
	this.checked=status;                   
    });
    TT=status?1:0;
    $('.statusInCart').each(function() {
	$(this).val(TT);                   
    });
	if (status) {  
		$.ajax({
			url: '/project2/Home/changeStatusAll',
			type: 'POST',
			data: {status: 1}
		})
		.done(function() {
		})
		.fail(function() {
		
		})
		.always(function() {
		allProduct=parseInt($('#sl').html());	   //quantity all 
		$('#slspCheck').html(allProduct);
		allPrice=parseInt($('#allPrice').val());   //price all
	    $('#prices').val(allPrice); 
		hThi1=formatNumber(allPrice, '.', '.');
		$('#giagoc').html(hThi1+'₫');
	    phiship=(allPrice>=500000||allProduct==0)?0:50000;  
	    hThi2=formatNumber(phiship, '.', '.');
	    $('#phiship').html(hThi2+'₫');
	    priceEnd=allPrice+phiship;
	    hThi3=formatNumber(priceEnd, '.', '.');	
	    $('#priceEnd').html(hThi3+'₫');
		});
	}else{
	$.ajax({
			url: '/project2/Home/changeStatusAll',
			type: 'POST',
			data: {status: 0}
		})
		.done(function() {
		})
		.fail(function() {
		
		})
		.always(function() {	
		$('#giagoc').html('0 ₫');
	    $('#slspCheck').html(0);
	    $('#phiship').html('0₫');	
	    $('#priceEnd').html('0₫');
	    $('#prices').val(0);
		});	
	}
    }); //end all check
        $('.check').change(function() {      //  single check 
	if ($('.check:checked').length==$('.check').length) {  
		$('#all_check')[0].checked=true;
	}else{
		$('#all_check')[0].checked=false;
	}
	status=this.checked;       
    id=$(this).val();                                  
    slsp_check=parseInt($('#slspCheck').html());        //quantity in order
    giagoc=parseInt($('#prices').val());                // price in order
    slChange=parseInt($(this).parent().parent().parent().parent().next().next().find('#sl_add').val());           
    pGoc=$(this).parent().parent().parent().parent().next().find('.pGoc').val();
 	pKM=$(this).parent().parent().parent().parent().next().find('.pKM').val();
 	priChange=parseInt((pKM>0)?pKM:pGoc);        //giá sp
 	elementChange=$(this).parent().parent().parent().parent().next().next().find('.statusInCart');
    if (status=='true') {   
      $.ajax({
    	url: '/project2/Home/changeStatusSingle',
    	type: 'POST',
    	data: {status:1,id:id}
	    })
	    .done(function() {
	    })
	    .fail(function() {
	    })
	    .always(function() {
            elementChange.val(1);
	    	slsp_check+=slChange;
	    	giagoc+=priChange*slChange;
	    	$('#prices').val(giagoc);  
	    	hThi1=formatNumber(giagoc, '.', '.');
	    	$('#giagoc').html(hThi1+'₫');
	    	$('#slspCheck').html(slsp_check);
	    	phiship=(giagoc>=500000||slsp_check==0)?0:50000;  
	    	hThi2=formatNumber(phiship, '.', '.');
            $('#phiship').html(hThi2+'₫');
            priceEnd=giagoc+phiship;
 			hThi3=formatNumber(priceEnd, '.', '.');
	    	$('#priceEnd').html(hThi3+'₫');	
	    });	
	    }else{
	   	$.ajax({
    	url: '/project2/Home/changeStatusSingle',
    	type: 'POST',
    	data: {status: 0,id:id}
	    })
	    .done(function() {
	    })
	    .fail(function() {
	    })
	    .always(function() {
	    	elementChange.val(0);
	    	slsp_check-=slChange;
	    	giagoc-=priChange*slChange;
	    	$('#prices').val(giagoc);  
	    	hThi1=formatNumber(giagoc, '.', '.');
	    	$('#giagoc').html(hThi1+'₫');
	    	$('#slspCheck').html(slsp_check);
	    	phiship=(giagoc>=500000||slsp_check==0)?0:50000; 
	    	hThi2=formatNumber(phiship, '.', '.');
            $('#phiship').html(hThi2+'₫');
            priceEnd=giagoc+phiship;
 			hThi3=formatNumber(priceEnd, '.', '.');
	    	$('#priceEnd').html(hThi3+'₫');		 	
	    });	
	    }
        }); // end xử lý checkbox đơn

        $('.xacnhan').click(function() {  // click form thanh toán
        $.ajax({
        		url: '/project2/Home/verifyOrder'
        	}) 
        	.always(function(data) {
        	x = data.indexOf(">");
			data = data.slice(x+1, data.length);
        	data = JSON.parse(data);
        	if (data.status=='faillogin') {
        		// login required
        		$('.loginMember').removeClass('KHthi');
				$( window ).scroll(function() {
				  var y = $(window).scrollTop();
				  y=y+'px';
				  $(".loginMember").css("top",y);
				});

        	}else if (data.status=='done') {
		        $('.xam').removeClass('KHthiXam');
		        $('.thanhtoan').removeClass('up');
		        $('.thanhtoan').addClass('down');
		        $(".footer").css({"z-index":"-1"});
		        $('#hoten').val(data.data.fullname); 
		        $('#sdt').val(data.data.phone); 
		        $('#emailreceive').val(data.data.email); 
        	}else if (data.status=='fail') {
        		alert('Vui lòng chọn ít nhất 1 sản phẩm');	
        	}
        	});
        });
        $('.dong').click(function() { // close form thanh toán
        $('.xam').addClass('KHthiXam');
        $('.thanhtoan').removeClass('down');
         $('.thanhtoan').addClass('up');
         $(".footer").css({"z-index":"1"});
        });
       $('.dathang').click(function() {
    	userId=$('#userId').val();
    	phone=$('#sdt').val();
    	email=$('#emailreceive').val();
    	address=$('#address').val();
    	note=$('#note').val();
    	if (!phone||!address) {
    		alert('Vui lòng nhập đầy đủ thông tin');
    	}else if(!isEmail(email)){
    		alert('Địa chỉ email không hợp lệ');
    	}else{
    		$('.thanhtoan').addClass('hidden');
    		$('.xam').addClass('KHthiXam');
	        $('.thanhtoan').removeClass('down');
	        $('.thanhtoan').addClass('up');
	        $(".footer").css({"z-index":"1"});
    		$.ajax({
    			url: '/project2/Home/addOrder',
    			type: 'POST',
    			data: {userId:userId,phone:phone,email:email,address:address,note:note}
    		})
    		.done(function() {
    		})
    		.fail(function() {
    		})
    		.always(function(data) {
    			x = data.indexOf(">");
				data = data.slice(x+1, data.length);
    			data = JSON.parse(data);
    		    $('.xam').removeClass('KHthiXam');
    			if (data =='success') {
    				alert('Đặt hàng thành công, nhân viên cửa hàng sẽ liên hệ với bạn trong vòng vài giờ tới.Tiếp tục mua sắm');
    				location.href = '/project2/Home';
    			}else{
    				alert('Đơn hàng đặt không thành công. Vui lòng thử lại sau !');
    				location.href = '/project2/Home';
    			}

    		
    		});
    	}

    });
},false);