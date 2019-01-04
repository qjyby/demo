﻿
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <title>HTML5手机绑定获取验证码特效 </title>

    <link rel="stylesheet" href="/css/phone.css">
    <link rel="stylesheet" type="text/css" href="/css/weui.min.css">
    <link rel="stylesheet" type="text/css" href="/css/jquery-weui.css">
    <link rel="stylesheet" type="text/css" href="/css/demos.css">

</head>
<body>

<form style="margin:8px" action="/sms/check" method="post">
    <h3 class="demos-title" style="margin-bottom:50px; margin-top:50px">手机号绑定</h3>
    <div class="weui_cell">
        <div class="weui_cell_hd">
            <lab el class="weui_label">手机号：</lab>
        </div>
        <div class="weui_cell_bd weui_cell_primary">
            <input class="weui_input" type="tel" id="tell" name="tell" placeholder="请输入手机号">
        </div>
    </div>
    <div class="weui_cell">
        <div class="weui_cell_hd">
            <label class="weui_label">验证码：</label>
        </div>
        <div class="weui_cell_bd weui_cell_primary">
            <input class="weui_input" type="certifycode" id="certifycode" name="certifycode" placeholder="请输入验证码">
        </div>
        <div class="weui_cell_ft">

            <input style="width:117px;" type="button" class="weui_btn weui_btn weui_btn_mini weui_btn_primary"
                   value="获取验证码" onclick="clickButton(this)"></div>
    </div>
    <div class="weui_cell"></div>
    <div class="weui_btn_area" style="margin-top:80px"><input class="weui_btn weui_btn_primary" type="submit"></div>
</form>

<script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
    function clickButton(obj) {
        $.ajax({
            type: 'post',
            url: '/sms/send',
            data: {phone: $("#tell").val()},
            timeout: 5000,
            dataType: "json",
            success: function (data) {

            },
            error: function (data) {

                tool.alertWarning(errorMessage);
            }
        });



    var obj = $(obj);
    obj.attr("disabled", "disabled");
    /*按钮倒计时*/
    var time = 60;
    var set = setInterval(function () {
        obj.val(--time + "(s)");
    }, 1000);
    /*等待时间*/
    setTimeout(function () {
        obj.attr("disabled", false).val("重新获取验证码");
        /*倒计时*/
        clearInterval(set);
    }, 60000);
    }

</script>


</body>
</html>

