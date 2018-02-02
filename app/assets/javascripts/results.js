/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;
    $('#articles-button').click(function(){
        $('#articles').fadeIn(fadeTime);
        $('#users').hide();
        $('#topics').hide();
        $('#tags').hide();
    });
    
    $('#users-button').click(function(){
        $('#articles').hide();
        $('#users').fadeIn(fadeTime);
        $('#topics').hide();
        $('#tags').hide();
    });
    
    $('#topics-button').click(function(){
        $('#articles').hide();
        $('#users').hide();
        $('#topics').fadeIn(fadeTime);
        $('#tags').hide();
    });
    
    $('#tags-button').click(function(){
        $('#articles').hide();
        $('#users').hide();
        $('#topics').hide();
        $('#tags').fadeIn(fadeTime);
    });
});
