<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>爱家-登陆</title>
		<link href="../plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="../css/reset.css" rel="stylesheet">
		<link href="../css/ihome/main.css" rel="stylesheet">
		<link href="../css/ihome/login.css" rel="stylesheet">
	</head>

	<body>
		<div class="container">
			<form class="form-login">
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-user fa-lg fa-fw"></i></div>
						<input type="text" class="form-control" name="mobile" id="mobile" placeholder="手机号">
					</div>
				</div>
				<div class="error-msg" id="mobile-err"><i class="fa fa-exclamation-circle"></i><span></span></div>
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-lock fa-lg fa-fw"></i></div>
						<input type="password" class="form-control" name="password" id="password" placeholder="密码">
					</div>
				</div>
				<div class="error-msg" id="password-err"><i class="fa fa-exclamation-circle"></i><span></span></div>
				<button type="submit" class="btn btn-lg btn-theme btn-block">登录</button>
				<p class="register-a">没有账号，
					<a href="register.ftl">立即注册</a>
				</p>
			</form>
		</div>
		<script src="../js/jquery.min.js"></script>
		<script src="../plugin/bootstrap/js/bootstrap.min.js"></script>
		<script src="../js/ihome/login.js"></script>
	</body>
</html>