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
    menuListHide("ul.dropdown_btn");

    //form_preview
    $(".upper_image_new").change(function (e) {
        console.log("filechange")
        let file = e.target.files[0];
        let reader = new FileReader();

        if (file.type.indexOf("image") < 0) {
            alert("画像を選択してください");
            return false;
        }

        reader.onload = (function (file) {
            return function (e) {
                $(".upper_image_box").append($("<img>").attr({
                    src: e.target.result,
                    width: "400px",
                    class: "upper_image",
                    title: file.name
                }));
            }
        })(file);

        reader.readAsDataURL(file);
    });
    $(".down_image_new").change(function (e) {
        console.log("filechange")
        let file = e.target.files[0];
        let reader = new FileReader();

        if (file.type.indexOf("image") < 0) {
            alert("画像を選択してください");
            return false;
        }

        reader.onload = (function (file) {
            return function (e) {
                $(".down_image_box").append($("<img>").attr({
                    src: e.target.result,
                    width: "400px",
                    class: "down_image",
                    title: file.name
                }));
            }
        })(file);

        reader.readAsDataURL(file);
    });



});
