$(function(){
    $(".path_btn li").hover(function(){
        $("button:not(:animated0)", this).slideDown();
    }, function(){
        $("button.memu", this).slideUp();
    });
});