// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('turbolinks:load', function(){
	$(document).on('click', '.shoppingcart', function(){
		let info_json = JSON.parse($(this).closest('.item').attr('data-info'));
		$('#cart-items').find('.cart-name span').text(info_json.name);
		$('#cart-items').find('.cart-price span').text(info_json.price);
	});
});