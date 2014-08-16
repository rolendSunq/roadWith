<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport"    content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
		<title>로그인</title>
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
				<li class="active">로그인</li>
			</ol>
			<div class="row">
				<!-- Article main content -->
				<article class="col-xs-12 maincontent">
					<header class="page-header">
						<h1 class="page-title">로그인</h1>
					</header>
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" id="panel">
						<div class="panel panel-default">
							<div class="panel-body">
								<h3 class="thin text-center">귀하의 계정에 로그인</h3>
								<p class="text-center text-muted">계정이 없다면, 
									<a href="signUp">회원가입</a>으로  이동하여 가입하시면 됩니다.  
								</p>
								<hr>
								<form name="signin">
									<div class="top-margin">
										<label>Username/Email <span class="text-danger">*</span></label>
										<input type="text" class="form-control" name="id" id="idOrEmail" placeholder="아이디 또는 email를 입력하세요.">
									</div>
									<div class="top-margin">
										<label>Password <span class="text-danger">*</span></label>
										<input type="password" class="form-control" name="pw" id="userPasswd" placeholder="●●●●●●●●●">
									</div>
									<hr>
									<div class="row">
										<div class="col-lg-8">
											<button type="button" class="btn btn-default" id="findId">아이디 찾기</button>
											<button type="button" class="btn btn-default" id="findPasswd">패스워드 찾기</button>
										</div>
										<div class="col-lg-4 text-right">
											<button class="btn btn-primary btn-lg" type="button" id="signinBtn">Sign in</button>
										</div>
									</div>
									<input type="hidden" name="email" id="emailHd">
								</form>
							</div>
						</div>
					</div>
				</article>
				<!-- /Article -->
			</div>
		</div>	<!-- /container -->
		<!-- modal find ID -->
		<div class="modal fade" id="modalId">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" id="cancelIdBtn1"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title"><b>아이디 찾기</b></h4>
					</div>
					<div class="modal-body">
						<p id="modalTitleEmail">가입한 Email 입력</p>
						<input type="text" class="form-control" id="emailInp">
						<br/>
						<label id="serchIdByEmail"></label>
					</div>
					<div class="modal-footer">
					    <button type="button" class="btn btn-default" data-dismiss="modal" id="cancelIdBtn2">취소</button>
					    <button type="button" class="btn btn-primary" id="findIdBtn">확인</button>
				  	</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- modal find ID -->
		<div class="modal fade" id="modalPasswd">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" id="cancelPasswdBtn1"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title"><b>패스워드 찾기</b></h4>
					</div>
					<div class="modal-body">
						<p id="modalTitleEmail">가입한 아이디 입력</p>
						<input type="text" class="form-control" id="idInp">
						<br/>
						<label id="serchPasswdById"></label>
					</div>
					<div class="modal-footer">
					    <button type="button" class="btn btn-default" data-dismiss="modal" id="cancelPasswdBtn2">취소</button>
					    <button type="button" class="btn btn-primary" id="findPasswdBtn">확인</button>
				  	</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
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
			var section = true;
			function selectIdEmail(inputValue) {
				if (inputValue.indexOf('@') != -1) {
					section = false;
					$('#emailHd').val(inputValue);
				}
			}
			
			function validation() {
				var idExp = /^[a-z]+[a-z0-9]{7,15}$/g;
				var emailExp = /^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/g;
				var inpVal = $('#idOrEmail').val();
				var inpPasswd = $('#userPasswd').val();
				if (inpVal.length == 0 || inpVal.length == null || inpVal.length == '') {
					alert('아이디 또는 email을 입력하세요');
					$('#idOrEmail').focus();
					return false;
				}
				
				if (inpPasswd.length == 0 || inpPasswd.length == null || inpPasswd.length == '') {
					alert('password를 입력하세요.');
					$('#userPasswd').focus();
					return false;
				}
				
				if (section == true) {
					if (inpVal.length >= 7 && inpVal.length < 15) {
						if (!inpVal.match(idExp)) {
							alert('아이디 또는 email형식이 맞지 않습니다.');
							$('#idOrEmail').focus();
							return false;
						}
					} else {
						alert('아이디 또는 email형식이 맞지 않습니다.');
						$('#idOrEmail').focus();
						return false;
					}
				} else {
					if (!inpVal.match(emailExp)) {
						alert('아이디 또는 email형식이 맞지 않습니다.');
						$('#idOrEmail').focus();
						return false;
					}
				}
				
				$('form[name=signin]').attr({action:'signin?section=' + section, method:'post'}).submit();
			}
			
			function searchId(){
				var inputEmail = $('#emailInp').val();
				
				$.ajax({
				    type : "POST"
				    ,async : true
				    ,url : "ajaxFindIdByEmail"
				    ,dataType : "json" 
				    ,data : {email:$('#emailInp').val()}
				    ,contentType: "application/json; charset=utf-8"
				    ,success : function(response, status, request) {
				    	if (response != null) {
				    		$('#serchIdByEmail').html('회원님의 아이디는 ' + response + '입니다.');
						} else if (inputEmail == '' || inputEmail == null || inputEmail.length == 0) {
							$('#serchIdByEmail').html('입력되 않았습니다. 회원가입시 등록한 E-mail을 입력하세요.');
						} else {
				    		$('#serchIdByEmail').html('일치하는 E-mail이 없습니다. 회원가입 후 이용해주세요.');
							return false;
						}
				    }
				});
			}		
			
			function searchPasswd(){
				var inputId = $('#idInp').val();
				
				$.ajax({
				    type : "POST"
				    ,async : true
				    ,url : "ajaxFindPasswdById"
				    ,dataType : "json" 
				    ,data : {id:$('#idInp').val()}
				    ,contentType: "application/json; charset=utf-8"
				    ,success : function(response, status, request) {
				    	if (response != null) {
				    		$('#serchPasswdById').html('회원님의 패스워드는 ' + response + '입니다.');
						} else if (inputId == '' || inputId == null || inputId.length == 0) {
							$('#serchPasswdById').html('입력되지 않았습니다. 회원가입시 등록한 ID를 입력하세요.');
						} else {
				    		$('#serchPasswdById').html('일치하는 ID가 없습니다. ID 검색 후 이용해주세요.');
							return false;
						}
				    }
				});
			}				
		
			$(document).ready(function(){
				$('#idOrEmail').focus();
				$('#idOrEmail').keydown(function(e){
					if (e.keyCode == 13){
						$('#userPasswd').focus();
						return false;
					}
				});
				
				$('#userPasswd').keydown(function(e){
					if (e.keyCode == 13) {
						var txt = $('#idOrEmail').val();
						selectIdEmail(txt);
					}
				});
				
				$('#signinBtn').click(function(){
					var txt = $('#idOrEmail').val();
					selectIdEmail(txt);
					validation();
				});
				
				$('#findId').click(function(){
					$('#modalId').modal('show');
				});
				
				$('#findPasswd').click(function(){
					$('#modalPasswd').modal('show');
				});
				
				$('#findIdBtn').click(function(){
					if (true) {
						searchId();
					}
				});
				
				$('#findPasswdBtn').click(function(){
					if (true) {
						searchPasswd();
					}
				});
				
				$('#cancelIdBtn1').click(function(){
					$('#emailInp').val('');		
					$('#serchIdByEmail').empty();		
				});
				
				$('#cancelIdBtn2').click(function(){
					$('#emailInp').val('');			
					$('#serchIdByEmail').empty();		
				});
				
				$('#cancelPasswdBtn1').click(function(){
					$('#idInp').val('');			
					$('#serchPasswdById').empty();		
				});
				
				$('#cancelPasswdBtn2').click(function(){
					$('#idInp').val('');			
					$('#serchPasswdById').empty();		
				});				
			});
		</script>	
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>