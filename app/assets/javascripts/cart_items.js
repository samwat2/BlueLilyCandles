// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// adding count to shopping cart
$(document).on('turbolinks:load', function(){
	$(document).on('click', '.shoppingcart', function(){
		$.post('/cart_items', {cart_item: {item_id: $(this).data("id")}}, function({count}){
			$('.count').text(count);
		}, 'json');
	});
	//removing items from shopping cart
	$(document).on('ajax:success','.remove-cart-item', function(e, xhr, status, err){
		console.log(xhr, e, status, err);
		$(this).closest('.list-group').remove();
	});
});	



