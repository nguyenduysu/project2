document.addEventListener("DOMContentLoaded",function(){
	$('body').on('click','.addToCart',function () {
		var	id=parseInt($(this).children(":first").val());
		var quantity = parseInt($('.quantity').html());
		$.ajax({
			url: '/project2/Home/addToCart',
			type: 'POST',
			data: {id: id,sl:1}
		})
		.done(function() {

		})
		.fail(function() {

		})
		.always(function(data) {
			x = data.indexOf(">");
			data = data.slice(x+1, data.length);
			data = JSON.parse(data);
			if (data=='expired'){
				$('.expired').addClass('hThi');
				 setTimeout(function(){
				$('.expired').removeClass('hThi');
				 }, 800);
				$('.close').click(function() {
				$('.expired').removeClass('hThi');
				});
			}else if(data=='limit'){
				$('.limit').addClass('hThi');
				 setTimeout(function(){
				$('.limit').removeClass('hThi');
				 }, 800);
				$('.close').click(function() {
				$('.limit').removeClass('hThi');
				});
			}else if (data =='done') {
				$('.quantity').html(quantity+1);
				$('.messageAddToCart').addClass('hThi');
				 setTimeout(function(){
				$('.messageAddToCart').removeClass('hThi');
				 }, 800);
				$('.close').click(function() {
				$('.messageAddToCart').removeClass('hThi');
				}); 
			}
		});
	})
},false);