<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>지하철</title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 사용자 정의 css -->
<link href="resources/css/member.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 사용자 정의 js -->
<script type="text/javascript" src='resources/js/member.js'></script>

</head> 
<body>

<!-- 상단 메뉴바 -->
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<!-- 로고 -->
	<div class="navbar-header d-flex col">
		<a class="navbar-brand" href="#"><b>Ezy</b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
			<span class="navbar-toggler-icon"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<!-- end of 로고 -->
	
	<!-- 페이지 이동, 폼 등 모음 -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<!-- 페이지 이동 -->
		<ul class="nav navbar-nav ml-auto">
			<li class="nav-item"><a href="#" class="nav-link">지하철 노선도</a></li>
			<li class="nav-item"><a href="#" class="nav-link">공지사항</a></li>			
		</ul>
		<!-- end of 페이지 이동 -->
		
		<!-- 로그인, 회원가입 -->
		<ul class="nav navbar-nav navbar-right ml-auto">
			<!-- 로그인 폼 -->			
			<li class="nav-item">
				<a data-toggle="dropdown" id="dologin" class="nav-link dropdown-toggle" href="#">로그인</a>
				<ul class="dropdown-menu form-wrapper"  id="first">					
					<li>
						<form action="member/login.do" method="post"  name="loginform">
							<div class="form-group social-btn clearfix">
								<a href="#" class="btn btn-primary pull-left"><i class="fa fa-facebook"></i> Facebook</a>
								<a href="#" class="btn btn-info pull-right"><i class="fa fa-twitter"></i> Twitter</a>
							</div>
							<div class="or-seperator"><b>or</b></div>
							<div class="form-group">
								<input type="text" class="form-control" name="mid" id="mid" placeholder="사용자 이름, 이메일 또는 휴대폰 번호" required="required">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="pass" id="pass" placeholder="비밀번호" required="required">
							</div>
							<input type="submit" name="login" id="login" class="btn btn-primary btn-block" value="로그인">
							<label id="loginresult"></label>
							<div class="form-footer">
								<a href="#" name="forgetpass" id="forgetpass">비밀번호를 잊으셨습니까?</a>
							</div>
							<div class="form-footer">
								계정이 없으십니까?&nbsp<a href="#" name="gotosignup" id="gotosignup">회원가입</a>
							</div>
						</form>
					</li>
				</ul>
			</li>
			<!-- end of 로그인 폼 -->
			
			<!-- 회원가입 -->
			<li class="nav-item">
				<a href="#" data-toggle="dropdown" name="dosignup" id="dosignup" class="nav-link dropdown-toggle">회원가입</a>
				<ul class="dropdown-menu form-wrapper" id="second">					
					<li>
						<form action="signup.do" name="signupform" id="signupform" method="post">
							<div class="form-group social-btn clearfix">
								<a href="#" class="btn btn-primary pull-left"><i class="fa fa-facebook"></i> Facebook</a>
								<a href="#" class="btn btn-info pull-right"><i class="fa fa-twitter"></i> Twitter</a>
							</div>
							<div class="or-seperator"><b>or</b></div>
							<div class="form-group">
								<input type="text" name="mid" id="mid" class="form-control" placeholder="이메일 또는 휴대폰 번호" required="required">
								<label id="midmessage"></label>
							</div>
							<div class="form-group">
								<input type="text" name="username" id="username" class="form-control" placeholder="사용자 이름" required="required">
							</div>
							<div class="form-group">
								<input type="password" name="pass" id="pass" class="form-control" placeholder="비밀번호" required="required">
							</div>
							<div class="form-footer">
								<label class="policy">가입하면&nbsp<a href="#locationdatapolicy">위치 데이터 정책</a>과&nbsp<a href="#termofservice">이용약관</a>에 동의하게 됩니다.</label>
							</div>
							<input type="submit" class="btn btn-primary btn-block" value="회원가입">
							<div class="form-footer">
								계정이 있으십니까?&nbsp<a href="#" name="gotologin" id="gotologin">로그인</a>
							</div>
						</form>
					</li>
				</ul>
			</li>
			<!-- end of 회원가입 -->
		</ul>
		<!-- end of 로그인, 회원가입 -->
		
	</div>
	<!-- end of 페이지 이동, 폼 등 모음 -->
</nav>
<!-- end of 상단 메뉴바 -->

</body>
</html>   