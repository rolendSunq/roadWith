<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">
		<title>로드러너</title>
		<link rel="shortcut icon" href="./resources/assets/images/gt_favicon.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
		
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css"
			media="screen">
		<link rel="stylesheet" href="./resources/assets/css/noImgCommon.css">
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
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/roadwith"><img
						src="./resources/assets/images/logo.png"
						alt="Progressus HTML5 template"></a>
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
					<li><a class="btn" href="signin.html?signin">로그인 / 회원가입</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="/roadwith">홈</a></li>
			<li class="active">자유게시판</li>
		</ol>
		<article class="">
			<div class="row">
				<table class="table table-bordered">
				<c:if test="${Articles.totalPageCount >0}">
						<tr>
							<td colspan="5">
								${Articles.startRow}-${Articles.endRow}
								[${Articles.requestPage}/${Articles.totalPageCount}]
							</td>
						</tr>
					</c:if>
					<colgroup>
							<col width="8%">
							<col width="">
							<col width="14%">
							<col width="10%">
							<col width="7%">
					</colgroup>
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
				<colgroup>
						<col width="8%">
						<col width="">
						<col width="14%">
						<col width="10%">
						<col width="7%">
				</colgroup>		
		<c:choose>
			<c:when test="${Articles.hasArticle == false }">
				<tr>
					<td colspan="5">
						게시글이 없습니다.
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="article" items="${Articles.articleList}">
					<tr>
						<td>${article.articleId}</td>
						<td>
							<c:set var="query" value="articleId=${article.articleId}&p=${Articles.requestPage}"/>
							<a href='<c:url value="read_view?${query}"/>'>
								${article.title}
							</a>
						</td>
						<td>${article.writerName}</td>
						<td>${article.postingDate}</td>
						<td>${article.readCount}</td>
					</tr>
				</c:forEach>
					<tr>
						<td colspan="5">
							<c:if test="${beginPage > 10}">
								<a href='<c:url value="/Flist.jsp?p=${beginPage-1}"/>'>이전</a>
							</c:if>
							<c:forEach var="pno" begin="${beginPage}" end="${endPage}">
							<a href='<c:url value="/Flist.jsp?p=${pno}"/>'>[${pno}]</a>
							</c:forEach>
							<c:if test="${endPage < Articles.totalPageCount}">
								<a href="<c:url value="/Flist.jsp?p=${endPage + 1}"/>">다음</a>
							</c:if>
						</td>
					</tr>
			</c:otherwise>
		</c:choose>
				</table>
				<div class="pull-right">
					<div class="col-md-4">
						<button type="button" class="btn btn-default" name="writeArticle" id="writeArticle"><i class="fa fa-pencil-square"></i> 글쓰기</button>
					<div class="text-center">
						<ul class="pagination">
						<c:if test="${beginPage > 10}">
						  <li><a href="<c:url value="/freeBoard?p=${beginPage-1}"/>">&laquo;</a></li>
						</c:if>
						<c:forEach var="pno" begin="${beginPage}" end="${endPage}">
						  <li><a href='<c:url value="/freeBoard?p=${pno}"/>'>${pno}</a></li>
						</c:forEach>
						<c:if test="${endPage < Articles.totalPageCount}">
						  <li><a href="<c:url value="/freeBoard?p=${endPage + 1}"/>">&raquo;</a></li>
						</c:if>
						</ul>
						</div>
					</div>
				</div>
			</div><!-- /row -->
		</article>
		</div><!-- /container -->
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
			$(document).ready(function(){
				$('#writeArticle').click(function(){
					$(location).attr('href',"write");
				});
			});
	</script>
	<script src="./resources/assets/js/headroom.min.js"></script>
	<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
	<script src="./resources/assets/js/template.js"></script>
</body>
</html>
