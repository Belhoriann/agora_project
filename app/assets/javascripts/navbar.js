/* global $ */

$(document).on('turbolinks:load', function() {
  var banner_height = $("#banner").height();
  var navbar = $("#mainnavbar");
  var lastScrollTop = 0;
  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    var currScrollTop = $(this).scrollTop();
    if (scroll >= banner_height && currScrollTop >= lastScrollTop) {
      $('#banner').hide();
      navbar.addClass("navbar-invisible")
      //navbar.removeClass("navbar-white")
    } else {
      $('#banner').show();
      navbar.removeClass("navbar-invisible")
      //navbar.addClass("navbar-white")
    }
    lastScrollTop = currScrollTop;

  });

});