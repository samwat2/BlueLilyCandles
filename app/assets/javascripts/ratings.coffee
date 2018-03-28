# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('.square-rating').barrating('show',{
		theme: 'bars-square', showValues: true, showSelectedRating: false
		})


	$(document).on 'ajax:success', '.delete-rating-link', ->
		$(this).closest('.rating').remove()