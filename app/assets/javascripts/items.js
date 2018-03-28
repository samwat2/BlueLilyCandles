// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// $(function(){
//  $("body").scroll(function(event, delta){
//    this.scrollLeft -= (delta * 30);
//    event.preventDefault();
//  });
// });

$(document).on('turbolinks:load', function(){
  $(document).on('click', '.sidebarCollapse', function() {
    let info_json = JSON.parse($(this).closest('.item').attr('data-info'));
    $('#sidebar').addClass('active').removeClass('inactive');
    $('#sidebar').find('.name span').text(info_json.name);
    $('#sidebar').find('.description span').text(info_json.description);
    $('#sidebar').find('.price span').text(info_json.price);
  });

  $(document).on('click', '#close-sidebar', function(){
    $('#sidebar').removeClass('active').addClass('inactive');
  });
});
