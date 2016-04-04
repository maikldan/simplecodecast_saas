$(document).ready(function () {
    $('.product_figure').mouseover(function () {
        $(this).css({
            'background': 'rgba(157, 33, 70, 0.92)'
        });
        $(this).find('.product_price').css({
            'color': 'white'
        });
        $(this).find('.product_buy').css({
            'color': '#9D2146',
            'background': 'white'
        });
        $(this).find('.product_link').css({
            'color': 'white'
        });
    });
    $('.product_figure').mouseleave(function () {
        $(this).css({
            'background': 'white',
            'border-radius': '0px'
        });
        $(this).find('.product_price').css({
            'color': '#9D2146'
        });
        $(this).find('.product_buy').css({
            'color': 'white',
            'background': '#9D2146'
        });
        $(this).find('.product_link').css({
            'color': '#9D2146'
        });
    });
    $(".ab2").css("min-height", $(window).height());
    $('.ab2').mouseover(function () {
        $(this).find('.arrow_link').css({
            'display': 'block'
        });
    });
    $('.ab2').mouseleave(function () {
        $(this).find('.arrow_link').css({
            'display': 'none'
        });
    });
    $(function () {
        var pgurl = window.location.href.substr(window.location.href
            .lastIndexOf("/") + 1);
        $("nav > div.container > div.collapse > ul > li > a").each(function () {
            if ($(this).attr("href") == pgurl || $(this).attr("href") == '')
                $(this).addClass("active");
        })
    });
});