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
		<link rel="shortcut icon" href="./resources/assets/images/favicon5.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css" media="screen">
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
	<header id="head" class="secondary"></header>
	<!-- container -->
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="/roadwith">홈</a></li>
			<li class="active">자유게시판</li>
		</ol>
		<article class="container">
			<div class="row">
				<table class="table table-bordered">
				<c:if test="${Articles.totalPageCount >0}">
						<tr>
							<td colspan="5">
								${Articles.startRow} - ${Articles.endRow}
								[${Articles.requestPage}/${Articles.totalPageCount}]
							</td>
						</tr>
					</c:if>
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
					<c:forEach var="article" items="${Articles.articleList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>
							<c:set var="query" value="articleId=${article.articleId}&p=${Articles.requestPage}"/>
							<a href='<c:url value="read_view?${query}"/>'>
								${article.title}
							</a>
						</td>
						<td>${article.writerName}</td>
						<td><fmt:formatDate value="${article.postingDate}" pattern="yyyy-MM-dd"/></td>
						<td>${article.readCount}</td>
					</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
				</table>
				<div class="pull-right">
					<div class="col-md-4">
						<button type="button" class="btn btn-default" name="writeArticle" id="writeArticle"><i class="fa fa-pencil-square"></i> 글쓰기</button>
					</div>
				</div>
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
			</div><!-- /row -->
		</article>
	</div><!-- /container -->

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
