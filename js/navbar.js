$(".nav-item li").click(function() {
    $(".nav-item li").removeClass('active');
    $(this).addClass('active');
});