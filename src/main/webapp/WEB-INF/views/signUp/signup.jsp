<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">
		<title>Sign up - Progressus Bootstrap template</title>
		<link rel="shortcut icon" href="./resources/assets/images/gt_favicon.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css" media="screen">
		<link rel="stylesheet" href="./resources/assets/css/main.css">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="./resources/assets/js/html5shiv.js"></script>
			<script src="./resources/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<!-- Fixed navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top headroom">
			<div class="container">
				<div class="navbar-header">
					<!-- Button for smallest screens -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/roadwith"><img
						src="./resources/assets/images/logo.png"
						alt="Progressus HTML5 template"></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav pull-right">
						<li class="active"><a href="/roadwith">홈</a></li>
						<li><a href="preview">튜토리얼</a></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">게시판 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="freeBoard">자유게시판</a></li>
								<li><a href="R2Board">러너 / 라이더</a></li>
							</ul>
						</li>
						<li><a href="notice">공지사항</a></li>
						<li><a href="contact">문의사항</a></li>
						<li><a href="weather">날씨</a></li>
						<li><a class="btn" href="signin.html?signin">로그인 / 회원가입</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<!-- /.navbar -->
		<header id="head" class="secondary"></header>
		<!-- container -->
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">회원가입</li>
			</ol>
			<div class="row">
				<!-- Article main content -->
				<article class="col-xs-12 maincontent">
					<header class="page-header">
						<h1 class="page-title">회원가입</h1>
					</header>
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="panel panel-default">
							<div class="panel-body">
								<h3 class="thin text-center">환영합니다.</h3>
								<p class="text-center text-muted">
									이미 회원가입을 하셨다면, <a href="signin.html">Login</a> 으로 이동하세요.<br>
									개인 정보 보호로 연락처와 주민번호는 묻지 않습니다.
								</p>
								<hr>
								<form method="post" action="signUp" name="signUpFrm">
									<div class="top-margin">
										<label>성함 ( 공개 되지 않습니다. )</label>
										<input type="text" class="form-control" id="userName" name="name" placeholder="자신의 성함을 입력해주세요.">
									</div>
									<div class="top-margin">
										<label>아이디 ( 로그인시 사용됩니다. )</label> 
										<input type="text" class="form-control" id="userId" name="id" placeholder="영문, 숫자를 혼합하여 7자리 이상 15자리 이하로 입력하세요.">
									</div>
									<div class="top-margin">
										<label>별명 ( 게시판에서 불려질 별명입니다. )</label> 
										<input type="text" class="form-control" id="userNickName" name="nickName" placeholder="영문, 한글, 숫자를 사용하여 입력해주세요.">
									</div>
									<div class="top-margin">
										<label>Email Address <span class="text-danger">*</span></label>
										<input type="text" class="form-control" id="userEmail" name="email"
											placeholder="현재 사용하는 Email 주소를 입력해주세요.">
									</div>
	
									<div class="row top-margin">
										<div class="col-sm-6">
											<label>패스워드 <span class="text-danger">*</span></label> <input
												type="password" class="form-control" id="userPasswd1" name="passwd1" >
										</div>
										<div class="col-sm-6">
											<label>패스워드 확인 <span class="text-danger">*</span></label> <input
												type="password" class="form-control" id="userPasswd2" name="passwd2">
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-lg-12 text-right">
											<button class="btn btn-primary btn-lg" type="button"  
												id="signUpBtn">가입완료</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</article>
				<!-- /Article -->
			</div>
		</div>
		<!-- /container -->
		<footer id="footer" class="top-space">
			<div class="footer1">
				<div class="container">
					<div class="row">
						<div class="col-md-3 widget">
							<h3 class="widget-title">Contact</h3>
							<div class="widget-body">
								<p>
									+234 23 9873237<br> <a href="mailto:#">some.email@somewhere.com</a><br>
									<br> 234 Hidden Pond Road, Ashland City, TN 37015
								</p>
							</div>
						</div>
						<div class="col-md-3 widget">
							<h3 class="widget-title">Follow me</h3>
							<div class="widget-body">
								<p class="follow-me-icons clearfix">
									<a href=""><i class="fa fa-twitter fa-2"></i></a>
									<a href=""><i class="fa fa-dribbble fa-2"></i></a> 
									<a href=""><i class="fa fa-github fa-2"></i></a>
									<a href=""><i class="fa fa-facebook fa-2"></i></a>
								</p>
							</div>
						</div>
						<div class="col-md-6 widget">
							<h3 class="widget-title">Text widget</h3>
							<div class="widget-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Excepturi, dolores, quibusdam architecto voluptatem amet fugiat
									nesciunt placeat provident cumque accusamus itaque voluptate
									modi quidem dolore optio velit hic iusto vero praesentium
									repellat commodi ad id expedita cupiditate repellendus possimus
									unde?</p>
								<p>Eius consequatur nihil quibusdam! Laborum, rerum, quis,
									inventore ipsa autem repellat provident assumenda labore soluta
									minima alias temporibus facere distinctio quas adipisci nam sunt
									explicabo officia tenetur at ea quos doloribus dolorum voluptate
									reprehenderit architecto sint libero illo et hic.</p>
							</div>
						</div>
					</div>
					<!-- /row of widgets -->
				</div>
			</div>
			<div class="footer2">
				<div class="container">
					<div class="row">
						<div class="col-md-6 widget">
							<div class="widget-body">
								<p class="simplenav">
									<a href="#">Home</a> | <a href="about.html">About</a> | 
									<a href="sidebar-right.html">Sidebar</a> | 
									<a href="contact.html">Contact</a>
									| <b><a href="signup.html">Sign up</a></b>
								</p>
							</div>
						</div>
						<div class="col-md-6 widget">
							<div class="widget-body">
								<p class="text-right">
									Copyright &copy; 2014, Your name. Designed by 
									<a href="http://gettemplate.com/" rel="designer">gettemplate</a>
								</p>
							</div>
						</div>
	
					</div>
					<!-- /row of widgets -->
				</div>
			</div>
		</footer>
		<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
		<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
		<script src="./resources/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function checkUserName(){
				var hangulExp = /^[가-힣]{2,5}$/;
				var userName = $('#userName').val();
				
				if (userName == '' || userName == null || userName.length == 0) {
					alert('사용자의 이름을 입력하세요.');
					$('#userName').focus();
					return false;
				}
				
				if (!userName.match(hangulExp)) {
					alert('정확한 이름을 입력하세요.');
					$('#userName').val('');
					$('#userName').focus();
					return false;
				}
				
				return true;
			}
			
			function checkUserId(){
				var idExp = /^[a-z]+[a-z]|[0-9]{7,15}$/g;
				var userId = $('#userId').val();
				
				if (userId == '' || userId == null || userId.length == 0) {
					alert('사용자의 아이디를 입력하세요.');
					$('#userId').focus();
					return false;
				}
				
				if (!userId.match(idExp)) {
					alert('아이디 형식이 맞지 않습니다.');
					$('#userId').val('');
					$('#userId').focus();
					return false;
				}
				
				return true;
			}
			
			function checkUserNickName(){
				var nickNameExp = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
				var userNickName = $('#userNickName').val();
				
				if (userNickName == '' || userNickName == null || userNickName.length == 0) {
					alert('사용자의 별명을 입력하세요.');
					$('#userNickName').focus();
					return false;
				}
				
				if (!userNickName.match(nickNameExp)) {
					alert('영문자와 한글,숫자만을 입력하세요.');
					$('#userNickName').val('');
					$('#userNickName').focus();
					return false;
				}
				
				return true;
			}
			
			function checkUserEmail(){
				var emailExp = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
				var userEmail = $('#userEmail').val();
				if (userEmail == '' || userEmail == null || userEmail.length == 0) {
					alert('사용자의 Email Address를 입력하세요.');
					$('#userEmail').focus();
					return false;
				}
				
				if (!userEmail.match(emailExp)) {
					alert('올바른 Email Address를 입력해주세요');
					$('#userEmail').val('');
					$('#userEmail').focus();
					
					return false;
				}
				
				return true;
			}
			
	
			
			function validation() {
				var hangulExp = /^[가-힣]{2,5}$/;
				var idExp = /^[a-z]+[a-z]|[0-9]{7,15}$/g;
				var nickNameExp = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
				var emailExp = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
				var userName = $('#userName').val();			
				var userId = $('#userId').val();
				var userNickName = $('#userNickName').val();
				var userEmail = $('#userEmail').val();
				var userPasswd1 = $('#userPasswd1').val();
				var userPasswd2 = $('#userPasswd2').val();
	
				if (userName == '' || userName == null || userName.length == 0) {
					alert('사용자의 이름을 입력하세요.');
					$('#userName').focus();
					return false;
				}
				
				if (userId == '' || userId == null || userId.length == 0) {
					alert('사용자의 아이디를 입력하세요.');
					$('#userId').focus();
					return false;
				}
				
				if (userNickName == '' || userNickName == null || userNickName.length == 0) {
					alert('사용자의 별명을 입력하세요.');
					$('#userNickName').focus();
					return false;
				}
				
				if (userEmail == '' || userEmail == null || userEmail.length == 0) {
					alert('사용자의 Email Address를 입력하세요.');
					$('#userEmail').focus();
					return false;
				}
				
				if (userPasswd1 == '' || userPasswd1 == null || userPasswd1.length == 0) {
					alert('사용자의 패스워드를 입력하세요.');
					$('#userPasswd1').focus();
					return false;
				}
				
				if(userPasswd2 == '' || userPasswd2 == null || userPasswd2.length == 0) {
					alert('사용자의 패스워드 확인을 입력하세요.');
					$('#userPasswd1').focus();
					return false;
				}
				
				if (userPasswd1 !== userPasswd2) {
					alert('패스워드를 일치 시켜주세요');
					$('#userPasswd1').val('');
					$('#userPasswd2').val('');
					$('#userPasswd1').focus();
					
					return false;	
				}
				
				if (!userName.match(hangulExp)) {
					alert('정확한 이름을 입력하세요.');
					$('#userName').val('');
					$('#userName').focus();
					return false;
				}

				if (!userId.match(idExp)) {
					alert('아이디 형식이 맞지 않습니다.');
					$('#userId').val('');
					$('#userId').focus();
					return false;
				}
				
				if (!userNickName.match(nickNameExp)) {
					alert('영문자와 한글,숫자만을 입력하세요.');
					$('#userNickName').val('');
					$('#userNickName').focus();
					return false;
				}
				
				if (!userEmail.match(emailExp)) {
					alert('올바른 Email Address를 입력해주세요');
					$('#userEmail').val('');
					$('#userEmail').focus();
					
					return false;
				}
				
				
				$('form[name=signUpFrm]').attr({action:'welcome',method:'post'}).submit();
			}
	
			$(document).ready(function() {
				$('#signUpBtn').click(function() {
					if (validation()) {
						$('form[name=signUpFrm]').submit();
					}
				});
				
				$('#userName').keydown(function(e){
					if (e.keyCode == 13) {
						if (checkUserName()) {
							$('#userId').focus();
						}						
					}
				});
				
				$('#userId').keydown(function(e){
					if (e.keyCode == 13){
						if (checkUserId()){
							$.ajax({
							    type : "POST"
							    ,async : true
							    ,url : "ajaxCheckUserId"
							    ,dataType : "json" 
							    ,data : {id:$(this).val()}
							    ,contentType: "application/json; charset=utf-8"
							    ,success : function(response, status, request) {
							    	if (response == 'success') {
										alert('유효한 아이디 입니다.');
										$('#userNickName').focus();
									} else {
										alert('중복되는 아이디 입니다.');
										$('#userId').focus();
									}
							    }
							});
						}
						
					}
				});
				
				$('#userNickName').keydown(function(e){
					if (e.keyCode == 13) {
						if (checkUserNickName()) {
							$('#userEmail').focus();
						}						
					}
				});
				
				$('#userEmail').keydown(function(e){
					if (e.keyCode == 13){
						if (checkUserEmail()){
							$('#userPasswd1').focus();
						}						
					}
				});
				
				$('#userPasswd1').keydown(function(e){
					if (e.keyCode == 13){											
						$('#userPasswd2').focus();												
					}
				});	
				
				$('#userPasswd2').keydown(function(e){
					if (e.keyCode == 13){											
						if (validation()) {
							$('form[name=signUpFrm]').submit();
						}											
					}
				});	
			});
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>
