document.addEventListener("DOMContentLoaded",function(){
$(window).scroll(function(){
	  t = $(window).scrollTop();
     if (t>400) {
     	$('.iconUp').removeClass('KHthi');
     }else{
     	$('.iconUp').addClass('KHthi');
     }
	});	
$('.iconUp').click(function(){
		$("html").animate({scrollTop:0},1500,"easeInOutExpo");
	})
},false);