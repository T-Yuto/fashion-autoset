$(function () {

    //メニュータブの動作方法
    let menuListHide = function () {
        $("ul.dropdown_btn").children(".menulist").hide();
    }
    let menuListShow = function () {
        $("ul.dropdown_btn").children(".menulist").show();
    }
    
    //メニュータブの動作
    $('.dropdown ul.dropdown_btn').hover(
        function () {
            menuListShow();
        }, function () {
            menuListHide();
        }
    );
    
    //初めにタブを隠す
    // window.onload = function(){
    menuListHide("ul.dropdown_btn");
    // };

    //form_preview
    $(".upper_image_new").change(function (upper) {

        let file = upper.target.files[0];
        let reader = new FileReader();

        if (file.type.indexOf("image") < 0) {
            alert("画像を選択してください");
            return false;
        }

        reader.onload = (function (file) {
            return function (upper) {
                $("#upper_image").remove();
                $(".upper_image_new").append($("<img>").attr({
                    src: upper.target.result,
                    width: "400px",
                    height: "400px",
                    id: "upper_image",
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
                $("#down_image").remove();
                $(".down_image_new").append($("<img>").attr({
                    src: down.target.result,
                    width: "400px",
                    height: "500px",
                    id: "down_image",
                    title: file.name
                }));
            }
        })(file);

        reader.readAsDataURL(file);
    });

    $(".upper_image_delete_btn").click(function () {
        let elem = $('<div class="image_preview" id="upper_image">左のボタンから<br>ファイルを選択<br>してください<br></div>');
        $("#upper_image").remove();
        $(".upper_image_new").append(elem);
    });
    $(".down_image_delete_btn").click(function () {
        let elem = $('<div class="image_preview" id="down_image">左のボタンから<br>ファイルを選択<br>してください<br></div>');
        $("#down_image").remove();
        $(".down_image_new").append(elem);
    });

});
