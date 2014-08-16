<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport"    content="width=device-width, initial-scale=1.0">
		<title>자유게시판</title>
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
	<body bgcolor="#BDBDBD">
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
								<li><a href="R2Board">러너 / 라이더</a></li>
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
		<div class="container">
			<div class="row">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<br><br>
						<h2 class="text-center">글쓰기</h2>
						<form name="writeFrm" action='<c:url value="/writeBoard"/>' method="GET" class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-md-3 control-label">제목</label>
								<div class="col-md-8">
									<input type="text" name="title" id="title" class="form-control">
								</div>
							</div> 
							<div class="form-group">
								<label class="col-md-3 control-label">작성자</label>
								<div class="col-md-8">
									<input type="text" name="writerName" id="writerName" class="form-control">
								</div>
							</div> 
							<div class="form-group">
								<label class="col-md-3 control-label">내용</label>
								<div class="col-md-8">
									<textarea name="content" id="contentId" rows="10" class="form-control"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Password</label>
								<div class="col-md-8">
									<input type="password" name="password" id="passwordId" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label"></label>
								<div class="col-md-3 pull-right-offset-1">
									<button type="button" class="btn btn-primary" id="sendBtn"><i class="fa fa-align-justify"></i> 글 등록</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>		
		</div>
		
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
			function isValidate(){
				var titleValue = $('#title').val();
				var writerNameValue = $('input[name=writerName]').val();
				var contentValue = $('#contentId').val();
				var passwordValue = $('#passwordId').val();
				
				
				if(titleValue == '' || titleValue == null || titleValue.langth == 0) {
					alert('제목을 입력하세요.');
					$('#title').focus();
					return false;
				}
				
				if(writerNameValue == '' || writerNameValue == null || writerNameValue.langth == 0) {
					alert('작성자 이름을 입력하세요.');
					$('#writerName').focus();
					return false;
				}
				
				if(contentValue == '' || contentValue == null || contentValue.langth == 0) {
					alert('내용을 입력하세요.');
					$('#contentId').focus();
					return false;
				}
				
				if(passwordValue == '' || passwordValue == null || passwordValue.langth == 0) {
					alert('비밀번호 4자리를 입력하세요.');
					$('#passwordId').focus();
					return false;
				}
				
				return true;
			}
			
			$(document).ready(function(){
				$('#sendBtn').click(function(){
					if (isValidate()) {
						$('form[name="writeFrm"]').submit();
					}
				});
			});
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>
