// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){
	$('#sidebar').addClass('active');
});
$(document).ready(function() {
	$('#sidebarCollapse').on('click', function() {
		if ($('#sidebar').hasClass('active')) {
			$('#sidebar').removeClass('active');
		} else {
			$('#sidebar').addClass('active');
		};
	});
});
