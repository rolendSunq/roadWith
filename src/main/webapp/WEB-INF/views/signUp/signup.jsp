<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">
		<title>Sign up - Progressus Bootstrap template</title>
		<link rel="shortcut icon" href="./resources/assets/images/favicon5.png">
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
						src="./resources/assets/images/logotest2.png"
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
								<li><a href="roadContent">러너 / 라이더</a></li>
							</ul>
						</li>
						<li><a id="navNotice">공지사항</a></li>
						<li><a href="contact">문의사항</a></li>
						<li><a href="weather">날씨</a></li>
						<li><a class="btn" href="signin">로그인 / 회원가입</a></li>
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
				<li><a href="index.html">홈</a></li>
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
										<input type="text" class="form-control" id="userEmail" name="email"	placeholder="현재 사용하는 Email 주소를 입력해주세요.">
									</div>
	
									<div class="row top-margin">
										<div class="col-sm-6">
											<label>패스워드 <span class="text-danger">*</span></label> 
											<input type="password" class="form-control" id="userPasswd1" name="pw" placeholder="패스워드1">
										</div>
										<div class="col-sm-6">
											<label>패스워드 확인 <span class="text-danger">*</span></label> 
											<input type="password" class="form-control" id="userPasswd2" placeholder="패스워드2">
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-lg-12 text-right">
											<button class="btn btn-primary btn-lg" type="button" id="signUpBtn">가입완료</button>
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
		
	<!-- modal notice-->
	
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        			<h4 class="modal-title" id="myModalLabel"><b>공지 사항</b></h4>
      		</div>
      		<div class="modal-body">
      			<div class="page-header">
					<h2>
						<b>8월 17일 임시점검 안내</b> 
					</h2>
				</div>
안녕하세요~!<p>
항상 유저님들과 함께 하는 RoadWith 입니다.<p>
<p>
RoadWith를 사랑하고 아껴주시는 여러분께 감사의 말씀 드리며,<p>
2014년 08월 17일 일요일 임시점검 일정을 안내해 드립니다.<p>
 <p>
자세한 사항은 이하를 참고 바랍니다.<p>
<p>
<p> 
◎ 점검 일시:<p>
<p>
    ■ 서버점검 - 2014년 08월 17일 (목) 07:00 ~ 09:00 (약 2시간)<p>
<p>
<p>
◎ 패치 내용:<p>
<p>
    ■ 서버 안정화 작업<p>
<p>
<p>
회원 여러분들의 뜨거운 관심과 열정에 항상 감사 드리며<p>
최선을 다하는 RoadWith가 되겠습니다.<p>
 <p>
감사합니다.<p>
<p>
      </div>
      
        <div class="modal-body">
       		<div class="page-header">
				<h2>
					<b>8월 15일 광복절 이벤트 안내</b> 
				</h2>
			</div>
        
안녕하세요~!<p>
항상 유저님들과 함께 하는 RoadWith 입니다.<p>
<p>
RoadWith를 사랑하고 아껴주시는 여러분께 감사의 말씀 드리며,<p>
2014년 08월 15일 금요일 광복절 이벤트 일정을 안내해 드리겠습니다.<p>
 <p>
자세한 사항은 이하를 참고 바랍니다.<p>
<p>
<p> 
◎ 이벤트 일시:<p>
<p>
    ■ 이벤트 기간 - 2014년 08월 15일 (금)  2014년 08월 17일 (일) (3일간)<p>
    ■ 이벤트 내용 - 이벤트 기간내에 10이상 run&rider 그룹을 형성하여 즐기실분들에게<p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;선착순 20팀에게 저녁 식사값을 지불해드리겠습니다.<p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원분들의 많은 참여 부탁드립니다.<p>
<p>
<p>
회원 여러분들의 뜨거운 관심과 열정에 항상 감사 드리며<p>
최선을 다하는 RoadWith가 되겠습니다.<p>
 <p>
감사합니다.<p>
<p>
      </div>
    
	<div class="modal-body">
    	<div class="page-header">
			<h2>
				<b>8월 13일 업데이트 일정 안내</b> 
			</h2>
	</div>
        
안녕하세요~!<p>
항상 유저님들과 함께 하는 RoadWith 입니다.<p>
<p>
RoadWith를 사랑하고 아껴주시는 여러분께 감사의 말씀 드리며,<p>
2014년 08월 13일 수요일 업데이트 일정을 안내해 드립니다.<p>
 <p>
자세한 사항은 이하를 참고 바랍니다.<p>
<p>
<p> 
◎ 업데이트 일시:<p>
<p>
    ■ 서버점검 - 2014년 08월 13일 (수) 05:00 ~ 09:00 (약 4시간)<p>
<p>
<p>
◎ 업데이트 내용:<p>
<p>
    ■ 날씨 검색 시스템 적용<p>
    ■ 지도 검색 시스템 적용<p>
<p>
<p>
회원 여러분들의 뜨거운 관심과 열정에 항상 감사 드리며<p>
최선을 다하는 RoadWith가 되겠습니다.<p>
 <p>
감사합니다.<p>
<p>
      </div>
      
	<div class="modal-body">
    	<div class="page-header">
			<h2>
				<b>8월 8일 임시점검 안내</b> 
			</h2>
	</div>
        
안녕하세요~!<p>
항상 유저님들과 함께 하는 RoadWith 입니다.<p>
<p>
RoadWith를 사랑하고 아껴주시는 여러분께 감사의 말씀 드리며,<p>
2014년 08월 08일 금요일 임시점검 일정을 안내해 드립니다.<p>
 <p>
자세한 사항은 이하를 참고 바랍니다.<p>
<p>
<p> 
◎ 점검 일시:<p>
<p>
    ■ 서버점검 - 2014년 08월 08일 (금) 07:00 ~ 09:00 (약 2시간)<p>
<p>
<p>
◎ 패치 내용:<p>
<p>
    ■ 서버 안정화 작업<p>
<p>
<p>
회원 여러분들의 뜨거운 관심과 열정에 항상 감사 드리며<p>
최선을 다하는 RoadWith가 되겠습니다.<p>
 <p>
감사합니다.<p>
<p>
      </div>
      
	<div class="modal-body">
    	<div class="page-header">
			<h2>
				<b>8월 2일 임시점검 안내</b> 
			</h2>
	</div>
        
안녕하세요~!<p>
항상 유저님들과 함께 하는 RoadWith 입니다.<p>
<p>
RoadWith를 사랑하고 아껴주시는 여러분께 감사의 말씀 드리며,<p>
2014년 08월 02일 토요일 임시점검 일정을 안내해 드립니다.<p>
 <p>
자세한 사항은 이하를 참고 바랍니다.<p>
<p>
<p> 
◎ 점검 일시:<p>
<p>
    ■ 서버점검 - 2014년 08월 02일 (목) 07:00 ~ 09:00 (약 2시간)<p>
<p>
<p>
◎ 패치 내용:<p>
<p>
    ■ 서버 안정화 작업<p>
<p>
<p>
회원 여러분들의 뜨거운 관심과 열정에 항상 감사 드리며<p>
최선을 다하는 RoadWith가 되겠습니다.<p>
 <p>
감사합니다.<p>
<p> 
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- modal notice-->		
		
		<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-3 widget">
						<h3 class="widget-title">문의관련</h3>
						<div class="widget-body">
							<p>010-5423-2723<br>
								<a href="mailto:#">jjunghee@sba.seoul.kr</a><br>
								<br>
								서울시 마포구 성암로 330 DMC첨단산업센터
							</p>	
						</div>
					</div>

					<div class="col-md-3 widget">
						<h3 class="widget-title">Follow me</h3>
						<div class="widget-body">
							<p class="follow-me-icons">
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
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, dolores, quibusdam architecto voluptatem amet fugiat nesciunt placeat provident cumque accusamus itaque voluptate modi quidem dolore optio velit hic iusto vero praesentium repellat commodi ad id expedita cupiditate repellendus possimus unde?</p>
							<p>Eius consequatur nihil quibusdam! Laborum, rerum, quis, inventore ipsa autem repellat provident assumenda labore soluta minima alias temporibus facere distinctio quas adipisci nam sunt explicabo officia tenetur at ea quos doloribus dolorum voluptate reprehenderit architecto sint libero illo et hic.</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>
			<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="/roadwith">홈</a> | 
								<a href="notice">공지사항</a> |
								<a href="freeBoard">자유게시판</a> |
								<a href="contact.html">문의사항</a> |
								<b><a href="signUp">회원가입</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">사용된 기술</h3>
						<div class="widget-body">
							<p>이 프로젝트(Roadwith)는 MyBatis, GitHub, Twitter Bootstrap, Spring Framework, Apache Tomcat, Oracle 11g 등의 기술들이 이용되어 만들어졌습니다.
						</div>
					</div>

				</div> <!-- /row of widgets -->
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
				var idExp =   /^[A-Za-z]{1}[A-Za-z0-9]{6,14}$/;
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
			
			function searchId(){
				$.ajax({
				    type : "POST"
				    ,async : true
				    ,url : "ajaxCheckUserId"
				    ,dataType : "json" 
				    ,data : {id:$('#userId').val()}
				    ,contentType: "application/json; charset=utf-8"
				    ,success : function(response, status, request) {
				    	if (response == 'success') {
							alert('유효한 아이디 입니다.');
							$('#userNickName').focus();
						} else {
							alert('중복되는 아이디 입니다.');
							$('#userId').focus();
							return false;
						}
				    }
				});
			}
			
			function searchEmail(){
				$.ajax({
				    type : "POST"
				    ,async : true
				    ,url : "ajaxCheckUserEmail"
				    ,dataType : "json" 
				    ,data : {id:$('#userEmail').val()}
				    ,contentType: "application/json; charset=utf-8"
				    ,success : function(response, status, request) {
				    	if (response == 'success') {
							alert('유효한 E-mail 입니다.');
							$('#userPasswd1').focus();
						} else {
							alert('중복되는 E-mail 입니다.');
							$('#userEmail').focus();
							return false;
						}
				    }
				});
			}
			
			function validation() {
				var hangulExp = /^[가-힣]{2,5}$/;
				var idExp = /^[a-z]+[a-z]|[0-9]{7,15}$/;
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
				
				searchId();
				searchEmail();
				
				return true;
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
						if (checkUserId()) searchId();						
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
						if (checkUserEmail()) searchEmail();
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
				
				$('#navNotice').click(function(){
					$('#myModal').modal('show');
				});
				
			});
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>
