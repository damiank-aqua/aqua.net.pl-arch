$(function(){

    $('.category .object').hover(function() {

        $(this).css('background', '#fff');

        $(this).find('.front').hide();

        $(this).find('.back').fadeIn();

    }, function() {

        $(this).css('background', 'none');

        $(this).find('.back').hide();

        $(this).find('.front').fadeIn();

    });

});