<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport"    content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
		
		<title>로드러너</title>
	
		<link rel="shortcut icon" href="./resources/assets/images/favicon5.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
	
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css" media="screen" >
		<link rel="stylesheet" href="./resources/assets/css/main.css">
	
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="./resources/assets/js/html5shiv.js"></script>
		<script src="./resources/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
	<!-- Fixed navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top headroom" >
			<div class="container">
				<div class="navbar-header">
					<!-- Button for smallest screens -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
					</button>
					<a class="navbar-brand" href="/roadwith"><img src="./resources/assets/images/logotest2.png" alt="Progressus HTML5 template"></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav pull-right">
						<li class="active"><a href="/roadwith">홈</a></li>
						<li><a href="preview">튜토리얼</a></li>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle">게시판 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="freeBoard">자유게시판</a></li>
								<li><a href="roadContent">러너 / 라이더</a></li>
							</ul>
						</li>
						<li><a href="notice">공지사항</a></li>
						<li><a href="contact">문의사항</a></li>
						<li><a href="weather">날씨</a></li>
					<c:choose>
						<c:when test="${id != null }">
						<li><a class="btn" href="signout"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
						</c:when>
						<c:otherwise>
						<li><a class="btn" href="signin.html?signin"><i class="fa fa-sign-in"></i> 로그인 / 회원가입</a></li>
						</c:otherwise>
					</c:choose>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div> 
		<!-- /.navbar -->
	
		<header id="head" class="secondary"></header>
	
		<!-- container -->
		<div class="container">
	
			<ol class="breadcrumb">
				<li><a href="index.html">홈</a></li>
				<li class="active">문의사항</li>
			</ol>
	
			<div class="row">
				
				<!-- Article main content -->
				<article class="col-sm-9 maincontent">
					<header class="page-header">
						<h1 class="page-title">문의사항</h1>
					</header>
					
					<p>
							유저분들의 목소리를 듣겠습니다. 불편한 점, 문제점을 적어 보내주세요!
					</p>
					<br>
						<form>
							<div class="row">
								<div class="col-sm-4">
									<input class="form-control" type="text" placeholder="이름" id="contectName">
								</div>
								<div class="col-sm-4">
									<input class="form-control" type="text" placeholder="Email" id="contactEmail">
								</div>
								<div class="col-sm-4">
									<input class="form-control" type="text" placeholder="연락처" id="phoneNumber">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-sm-12">
									<textarea placeholder="여러분의 의견을 적어주세요..." class="form-control" rows="9" id="contactText"></textarea>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="pull-right col-sm-6 text-right">
									<input class="btn btn-action" type="submit" value="메일 전송" id="sendMessageBtn">
								</div>
							</div>
						</form>
	
				</article>
				<!-- /Article -->
				
				<!-- Sidebar -->
				<aside class="col-sm-3 sidebar sidebar-right">
	
					<div class="widget">
						<h4>Address</h4>
						<address>
							jjunghee@sba.seoul.kr
						</address>
						<h4>Phone:</h4>
						<address>
							(010) 5423-2723
						</address>
					</div>
	
				</aside>
				<!-- /Sidebar -->
	
			</div>
		</div>	<!-- /container -->
		
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
							<h3 class="widget-title">사용된 기술</h3>
							<div class="widget-body">
								<p>이 프로젝트(Roadwith)는 MyBatis, GitHub, Twitter Bootstrap, Spring Framework, Apache Tomcat, Oracle 11g 등의 기술들이 이용되어 만들어졌습니다.
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
							<div class="widget-body">
								<p class="text-right">
									Copyright &copy; 2014, Your name. Designed by <a href="http://gettemplate.com/" rel="designer">gettemplate</a> 
								</p>
							</div>
						</div>
	
					</div> <!-- /row of widgets -->
				</div>
			</div>
		</footer>		
		<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
		<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
		<script src="./resources/assets/js/bootstrap.min.js"></script>
		<script>
			$(document).ready(function(){
				$('#sendMessageBtn').click(function() {
					alert("정상적으로 전송되었습니다\n문의해 주셔서 감사합니다");
				});
			});
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>