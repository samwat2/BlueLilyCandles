// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function(){
	$(document).on('click', '.shoppingcart', function(){
		$.post('/cart_items', {cart_item: {item_id: $(this).data("id")}}, function({count}){
			$('.count').text(count);
		}, 'json');
	});
});