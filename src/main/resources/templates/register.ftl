
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>爱家-注册</title>
		<link href="../plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="../css/reset.css" rel="stylesheet">
		<link href="../css/ihome/main.css" rel="stylesheet">
		<link href="../css/ihome/register.css" rel="stylesheet">
	</head>

	<body>
		<div class="container">
			<form class="form-register" action="/api/check" method="post">
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-mobile fa-2x fa-fw"></i></div>
						<input type="number" class="form-control" name="mobile" id="mobile" placeholder="手机号" required>
					</div>
				</div>
				<div class="error-msg" id="mobile-err"><i class="fa fa-exclamation-circle"></i><span></span></div>
			
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-envelope-o fa-lg fa-fw"></i></div>
						<input type="text" class="form-control" name="phoneCode" id="phoneCode" placeholder="短信验证码" required>
						<div class="phonecode input-group-addon">
							<a class="phonecode-a" href="javascript:;" onclick="sendSMSCode();">获取验证码</a>
						</div>
					</div>
				</div>
				<div class="error-msg" id="phone-code-err"><i class="fa fa-exclamation-circle"></i><span></span></div>
				
				
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-lock fa-lg fa-fw"></i></div>
						<input type="password" class="form-control" name="password" id="password" placeholder="密码" required>
					</div>
				</div>
				<div class="error-msg" id="password-err"><i class="fa fa-exclamation-circle"></i><span></span></div>
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-lock fa-lg fa-fw"></i></div>
						<input type="password" class="form-control" name="password2" id="password2" placeholder="确认密码" required>
					</div>
				</div>
				<div class="error-msg" id="password2-err"><i class="fa fa-exclamation-circle"></i><span></span></div>
				<button type="submit" class="btn btn-lg btn-theme btn-block">立即注册</button>
				<p class="login-a">已有账号，
					<a href="/api/login">立即登陆</a>
				</p>
			</form>
		</div>
		<script src="../js/jquery.min.js"></script>
		<script src="../plugin/bootstrap/js/bootstrap.min.js"></script>
		<script src="../js/ihome/register.js"></script>
	</body>
</html>