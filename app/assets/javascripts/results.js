/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;
    $('#articles-button').click(function(){
        $('#articles').fadeIn(fadeTime);
        $('#users').hide();
        $('#topics').hide();
    });
    
    $('#users-button').click(function(){
        $('#articles').hide();
        $('#users').fadeIn(fadeTime);
        $('#topics').hide();
    });
    
    $('#topics-button').click(function(){
        $('#articles').hide();
        $('#users').hide();
        $('#topics').fadeIn(fadeTime);
    });
});
