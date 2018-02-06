/* global $ */

$(document).on('turbolinks:load', function() {
  var banner_height = $("#banner").height();
  var navbar = $("#mainnavbar");
  var lastScrollTop = 0;
 
  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    var currScrollTop = $(this).scrollTop();
    if (scroll > banner_height/2 && currScrollTop >= lastScrollTop) {
        $('#banner').hide();
        navbar.addClass("navbar-invisible");
    } else {
      $('#banner').fadeIn(100);
      navbar.removeClass("navbar-invisible");
    }
    lastScrollTop = currScrollTop;
  });
});