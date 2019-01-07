<!DOCTYPE html>
<html>
<head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>爱家</title>
    <link href="plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/reset.css" rel="stylesheet">
    <link href="plugin/swiper/css/swiper.min.css" rel="stylesheet">
    <link href="plugin/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <link href="css/ihome/main.css" rel="stylesheet">
    <link href="css/ihome/index.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="top-bar">
            <div class="register-login fr">
                <a class="btn top-btn btn-theme" href="register.ftl">注册</a>
                <a class="btn top-btn btn-theme" href="login.ftl">登录</a>
            </div>
            <div class="user-info fr"><span><i class="fa fa-user fa-lg"></i></span> <a class="user-name" href="/my.html"></a></div>
        </div>
        
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="#"><img src="images/home01.jpg"></a>
                    <div class="slide-title">房屋标题1</div>
                </div>
                <div class="swiper-slide">
                    <a href="#"><img src="images/home02.jpg"></a>
                    <div class="slide-title">房屋标题2</div>
                </div>
                <div class="swiper-slide">
                    <a href="#"><img src="images/home03.jpg"></a>
                    <div class="slide-title">房屋标题3</div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="search-bar">
            <button class="filter-btn" type="button" data-toggle="modal" data-target="#area-modal"><span class="fl" id="area-btn">选择城区</span><span class="fr"><i class="fa fa-map-marker fa-lg fa-fw"></i></span></button>
            <button class="filter-btn" type="button" data-toggle="modal" data-target="#start-date-modal"><span class="fl" id="start-date-btn">入住日期</span><span class="fr"><i class="fa fa-calendar fa-lg fa-fw"></i></span></button>
            <button class="filter-btn end-date" type="button" data-toggle="modal" data-target="#end-date-modal"><span class="fl" id="end-date-btn">离开日期</span><span class="fr"><i class="fa fa-calendar fa-lg fa-fw"></i></span></button>
            <a class="btn search-btn btn-theme" href="#" onclick="goToSearchPage(this);" area-id="" start-date="" end-date="">搜索</a>
            <div class="modal fade" id="area-modal" tabindex="-1" role="dialog" aria-labelledby="area-label">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="area-label">选择城区</h4>
                        </div>
                        <div class="modal-body">
                            <div class="area-list">
                                <a href="#" area-id="1">思明区</a>
                                <a href="#" area-id="2">湖里区</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="start-date-modal" tabindex="-1" role="dialog" aria-labelledby="start-date-label">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="start-date-label">入住日期</h4>
                        </div>
                        <div class="modal-body">
                            <div class="date-select" id="start-date"></div>
                            <input type="hidden" id="start-date-input">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-theme" onclick="setStartDate();">确定</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="end-date-modal" tabindex="-1" role="dialog" aria-labelledby="end-date-label">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="end-date-label">离开日期</h4>
                        </div>
                        <div class="modal-body">
                            <div class="date-select" id="end-date"></div>
                            <input type="hidden" id="end-date-input">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-theme" onclick="setEndDate();">确定</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <p><span><i class="fa fa-copyright"></i></span>i-home&nbsp;&nbsp;享受家的温馨</p>
        </div>
    </div>
    
    <script src="js/jquery.min.js"></script>
    <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="plugin/swiper/js/swiper.jquery.min.js"></script>
    <script src="plugin/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <script src="plugin/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
    <script src="js/template.js"></script>
    <script src="js/ihome/index.js"></script>
</body>
</html>