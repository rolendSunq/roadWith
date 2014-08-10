<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport"    content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
		<title>로드러너</title>
		<link rel="shortcut icon" href="./resources/assets/images/gt_favicon.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css" media="screen" >
		<link rel="stylesheet" href="./resources/assets/css/noImgCommon.css">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="./resources/assets/js/html5shiv.js"></script>
		<script src="./resources/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="home">
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
					<a class="navbar-brand" href="/roadwith"><img src="./resources/assets/images/logo.png" alt="Progressus HTML5 template"></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav pull-right">
						<li class="active"><a href="/roadwith">홈</a></li>
						<li><a href="about">개요</a></li>
						<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">게시판 <b class="caret"></b></a>
						<ul class="dropdown-menu">
						<li><a href="freeBoard?freeBoard">자유게시판</a></li>
						<li><a href="R2Board">러너 / 라이더</a></li>
						</ul>
						</li>
						<li><a href="notice">공지사항</a></li>
						<li><a href="contact">문의사항</a></li>
						<li><a href="weather">날씨</a></li>
						<li><a class="btn" href="signin.html?signin">로그인 / 회원가입</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
		<div><br><br><br><br></div>
		<div class="container"	>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="form-inline">
								<div>
									<h3 class="panel-title"><b>${article.title}</b></h3>
								</div>
								<div class="text-right">
									<div class="form-group">
										<h4 class="text-right"><small>${article.writerName}</small></h4>
									</div>
									<div class="form-group">
										<h4 class="text-right"><small><fmt:formatDate value="${article.postingDate}" pattern="yyyy-MM-dd"/></small></h4>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<pre class="row"><c:out value="${article.content}"/></pre>
						</div>
						
				    </div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="panel panel-default" id="replyForm">
						<div class="panel-heading">
							<form name="replyFrm">
								<div class="form-group">
									<div class="col-md-2">
										<h4>reply</h4>
									</div>
									<div class="pull-right col-md-5">
										<div class="input-group">
											<input type="text" class="form-control" id="writerTxt" name="writerName" placeholder="아이디 입력">
											<span class="btn btn-default input-group-addon" id="replyBtn">답글 등록</span>
										</div>
									</div>
									<div class="row">
										<textarea rows="3" name="replyContent" id="reTextArea" class="form-control" name="content"></textarea>
									</div>
								</div>
								<input type="hidden" name="articleId" value="${articleId }">
								<input type="hidden" name="title" value="<i class='fa fa-hand-o-right'></i>">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container"	>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<a class="btn btn-default" href="freeBoard"><i class="fa fa-arrow-left"></i> 목록</a>
					<button type="button" class="btn btn-default" id="replyDisplayBtn"><i class="fa fa-hand-o-right"></i> 답글</button>
					<a class="btn btn-default" href="editArticle"><i class="fa fa-pencil-square-o"></i> 수정</a>
					<a class="btn btn-default" href="deletArticle"><i class="fa fa-trash-o"></i> 삭제</a>
				</div>
			</div>
		</div>
		<footer id="footer" class="top-space">
			<div class="footer1">
				<div class="container">
					<div class="row">
						<div class="col-md-3 widget">
							<h3 class="widget-title">Contact</h3>
							<div class="widget-body">
								<p>+234 23 9873237<br>
									<a href="mailto:#">some.email@somewhere.com</a><br>
									<br>
									234 Hidden Pond Road, Ashland City, TN 37015
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
									<a href="#">Home</a> | 
									<a href="about.html">About</a> |
									<a href="sidebar-right.html">Sidebar</a> |
									<a href="contact.html">Contact</a> |
									<b><a href="signup.html">Sign up</a></b>
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
			var status = 'hide';
			$(document).ready(function(){
				$('#replyForm').hide();
				$('#replyDisplayBtn').click(function(){
					if (status == 'hide') {
						status = 'show';
						$(this).html('<i class="fa fa-hand-o-right"></i> 답글취소');
						$('#replyForm').show();
						$('#writerTxt').focus();
					} else {
						status = 'hide';
						$('#reTextArea').val('');
						$('#writerTxt').val('');
						$(this).html('<i class="fa fa-hand-o-right"></i> 답글');
						$('#replyForm').hide();
					}
				});
				
				$('#replyBtn').click(function(){
					status = 'hide';
					$('#replyDisplayBtn').html('<i class="fa fa-hand-o-right"></i> 답글');
					$('#replyForm').hide();
					$('form[name=replyFrm]').attr('action', 'putReply').submit();
				});
			});
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>
