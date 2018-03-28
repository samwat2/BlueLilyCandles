// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// $(function(){
//  $("body").scroll(function(event, delta){
//  	this.scrollLeft -= (delta * 30);
//  	event.preventDefault();
//  });
// });

$(document).ready(function(){
	$('#sidebar').addClass('active');
});
$(document).ready(function() {
	$('.sidebarCollapse').on('click', function() {
		if ($('#sidebar').hasClass('active')) {
			$('#sidebar').removeClass('active');
			$('.show').append('<li id="info<%= item.id %>"><%= item.name %><%= item.description %> <%= item.price %></li>');
		} else {
			$('#sidebar').toggleClass('active');
		};
	});
});
