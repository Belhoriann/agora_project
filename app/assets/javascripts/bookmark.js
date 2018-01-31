/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;
    $('#articles-button').click(function(){
        $('#articles').fadeIn(fadeTime);
        $('#comments').hide();
    });
    
    $('#comments-button').click(function(){
        $('#articles').hide();
        $('#comments').fadeIn(fadeTime);
    });
});