/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;

    $('#categories-button').click(function(){
        $('#categories').fadeIn(fadeTime);
        $('#categories-button').addClass('active');
        $('#users').hide();
        $('#users-button').removeClass('active');
    });
    
    $('#users-button').click(function(){
        $('#categories').hide();
        $('#categories-button').removeClass('active');
        $('#users').css('visibility', 'visible');
        $('#users').fadeIn(fadeTime);
        $('#users-button').addClass('active');
    });
});