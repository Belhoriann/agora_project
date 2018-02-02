/* global $ */

$(document).on('turbolinks:load', function() {
    var fadeTime = 200;
    $('#articles-button').click(function(){
        $('#articles').fadeIn(fadeTime);
        $('#articles-button').addClass('active');
        $('#comments').hide();
        $('#comments-button').removeClass('active');
        $('#favorites').hide();
        $('#favorites-button').removeClass('active');
        $('#following').hide();
        $('#following-button').removeClass('active');
        $('#followers').hide();
        $('#followers-button').removeClass('active');
    });
    
    $('#comments-button').click(function(){
        $('#articles').hide();
        $('#articles-button').removeClass('active');
        $('#comments').fadeIn(fadeTime);
        $('#comments-button').addClass('active');
        $('#favorites').hide();
        $('#favorites-button').removeClass('active');
        $('#following').hide();
        $('#following-button').removeClass('active');
        $('#followers').hide();
        $('#followers-button').removeClass('active');
    });
    
    $('#favorites-button').click(function(){
        $('#articles').hide();
        $('#articles-button').removeClass('active');
        $('#comments').hide();
        $('#comments-button').removeClass('active');
        $('#favorites').css('visibility', 'visible');
        $('#favorites').fadeIn(fadeTime);
        $('#favorites-button').addClass('active');
        $('#following').hide();
        $('#following-button').removeClass('active');
        $('#followers').hide();
        $('#followers-button').removeClass('active');
    });
    
    $('#following-button').click(function(){
        $('#articles').hide();
        $('#articles-button').removeClass('active');
        $('#comments').hide();
        $('#comments-button').removeClass('active');
        $('#favorites').hide();
        $('#favorites-button').removeClass('active');
        $('#following').fadeIn(fadeTime);
        $('#following-button').addClass('active');
        $('#followers').hide();
        $('#followers-button').removeClass('active');
    });
    
    $('#followers-button').click(function(){
        $('#articles').hide();
        $('#articles-button').removeClass('active');
        $('#comments').hide();
        $('#comments-button').removeClass('active');
        $('#favorites').hide();
        $('#favorites-button').removeClass('active');
        $('#following').hide();
        $('#following-button').removeClass('active');
        $('#followers').fadeIn(fadeTime);
        $('#followers-button').addClass('active');
    });
});