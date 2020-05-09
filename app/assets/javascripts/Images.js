$(function () {
    //メニュータブ
    $('.dropdown ul.dropdown_btn').hover(function () {
        $(this).children(".menulist").show();
    }, function () {
        $(this).children(".menulist").hide();
    });
});