/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;

    $('#categories-button').click(function(){
        $('#categories').fadeIn(fadeTime);
        $('#users').hide();
    });
    
    $('#users-button').click(function(){
        $('#categories').hide();
        $('#users').css('visibility', 'visible');
        $('#users').fadeIn(fadeTime);
    });
});