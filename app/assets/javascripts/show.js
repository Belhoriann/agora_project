/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;
    $('#articles-button').click(function(){
        $('#articles').fadeIn(fadeTime);
        $('#comments').hide();
        $('#favorites').hide();
        $('#following').hide();
        $('#followers').hide();
    });
    
    $('#comments-button').click(function(){
        $('#articles').hide();
        $('#comments').fadeIn(fadeTime);
        $('#favorites').hide();
        $('#following').hide();
        $('#followers').hide();
    });
    
    $('#favorites-button').click(function(){
        $('#articles').hide();
        $('#comments').hide();
        $('#favorites').css('visibility', 'visible');
        $('#favorites').fadeIn(fadeTime);
        $('#following').hide();
        $('#followers').hide();
    });
    
    $('#following-button').click(function(){
        $('#articles').hide();
        $('#comments').hide();
        $('#favorites').hide();
        $('#following').fadeIn(fadeTime);
        $('#followers').hide();
    });
    
    $('#followers-button').click(function(){
        $('#articles').hide();
        $('#comments').hide();
        $('#favorites').hide();
        $('#following').hide();
        $('#followers').fadeIn(fadeTime);
    });
});