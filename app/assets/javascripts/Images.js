$(function () {

    //メニュータブの動作
    $('.dropdown ul.dropdown_btn').hover(
        function () {
            menuListShow();
        }, function () {
            menuListHide();
        }
    );
    //メニュータブの動作方法
    let menuListHide = function () {
        $("ul.dropdown_btn").children(".menulist").hide();
    }
    let menuListShow = function () {
        $("ul.dropdown_btn").children(".menulist").show();
    }
    //初めにタブを隠す
    menuListHide("ul.dropdown_btn")


    // function uploadPreviewUpperImage(upper){
    //     if (upper.files && upper.files[0]){
    //         let reader = new FileReader();

    //         reader.onload = function(e){
    //             if (e.target.result.trim().length == 0) {
    //                 $("upper_image_new").append(("<img>").attr({
    //                     src: upper.target.result,
    //                     width: "400px",
    //                     height: "400px",
    //                     class: "upper_image",
    //                     title: e.name
    //                 }));
    //             }else{
    //                 $("upper_image_new").attr("src", e.target.result);
    //             }
    //         }
    //         reader.readAsDataURL(upper.files[0]);
    //     }
    // }
    // function uploadPreviewDownImage(down){
    //     if (down.files && down.files[0]){
    //         let reader = new FileReader();

    //         reader.onload = function(e){
    //             if (e.target.result.trim().length == 0) {
    //                 $("upper_image_new").append(("<img>").attr({
    //                     src: down.target.result,
    //                     width: "400px",
    //                     height: "400px",
    //                     class: "upper_image",
    //                     title: e.name
    //                 }));
    //             }else{
    //                 $("down_image_new").attr("src", e.target.result);
    //             }
    //         }
    //         reader.readAsDataURL(down.files[0]);
    //     }
    // }

    // function uploadPreviewUpperExt(upper){
    //     if (upper.trim().length == 0 ){
    //         let previewSrc = "@upper_image.id_url"
    //     }else{
    //         let previewSrc = upper;

    //     }
    //     $("upper_image_new").
    // }

    //form_preview
    $(".upper_image_new").change(function (upper) {
        
        let file = upper.target.files[0];
        let reader = new FileReader();

       
        reader.onload = (function (file) {
            return function (upper) {
                $(".upper_image").remove();
                $(".upper_image_new").append($("<img>").attr({
                    src: upper.target.result,
                    width: "400px",
                    height: "400px",
                    class: "upper_image",
                    title: file.name
                }));
            }
        })(file);
        reader.readAsDataURL(file);
    });

$(".down_image_new").change(function (down) {
    let file = down.target.files[0];
    let reader = new FileReader();

    if (file.type.indexOf("image") < 0) {
        alert("画像を選択してください");
        return false;
    }

    reader.onload = (function (file) {
        return function (down) {
            $(".down_image").remove();
            $(".down_image_new").append($("<img>").attr({
                src: down.target.result,
                width: "400px",
                height: "400px",
                class: "down_image",
                title: file.name
            }));
        }
    })(file);

    reader.readAsDataURL(file);
});


});
