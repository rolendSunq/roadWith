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
		<link rel="shortcut icon" href="./resources/assets/images/gt_favicon.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css" media="screen" >
		<link rel="stylesheet" href="./resources/assets/css/main.css">
		<style type="text/css">
			#riderContent {/*background-color: blue;*/}
			#nameTitle {background-color: #2BE8D8; }
			#jumbotron {
				/*background-color: #8EA2FF;*/
				background:url('./resources/assets/images/bicycle-ride.jpg') no-repeat center center;
			}
			#tabFontColor {color: black;}
			#formName {height: 20px;}
			#header {height: 110px;}
		</style>
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
						<li><a id="navNotice">공지사항</a></li>
						<li><a href="contact">문의사항</a></li>
						<li><a href="weather">날씨</a></li>
						<c:choose>
							<c:when test="${id != null }">
							<li><a class="btn" href="signout"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
							</c:when>
							<c:otherwise>
							<li><a class="btn" href="signin"><i class="fa fa-sign-in"></i> 로그인 / 회원가입</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div> 
		<!-- /.navbar -->
		<!-- full image rider
		<header id="head" class="secondary"></header>
		 -->
		<!-- container -->
		<header id="header">
			<div class="container">
				<div class="row">
					<h1></h1>
					<br>
					<h1></h1>
					<br>
					<h1></h1>
					<br>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<div class="container">			
					<div class="navbar-collapse collapse">
						<ul class="nav nav-tabs" role="tablist">
							<li class="active" ><a><b>라이더 게시판</b></a></li>
							<li><a href="runBoard" id="tabFontColor"><b>러너 게시판</b></a></li>
							<li><a href="freeBoard" id="tabFontColor"><b>자유 게시판</b></a></li>
						</ul>
					</div>
				</div>
			</div>	
		</header>
		<div class="container">
			<div class="row">
				<h1></h1>
				<br>
			</div>
		</div>
		<div class="container">
			<!-- jumbotron -->
			<div class="jumbotron top-space" id="jumbotron">
				<h2>Rider Group</h2>
				<form name="makeGrpFrm" id="formName">
		     		<p class="text-right">
		     			<a class="btn btn-primary btn-large" id="makeGroup"><i class="fa fa-users"></i> 그룹 생성하기 ≫</a>
		     		</p>
				</form>
	  		</div>
			<!-- /jumbotron End -->
	   	<c:choose>
	   		<c:when test="${Articles.isHasArticle() == false }"></c:when>
	   		<c:otherwise>
	   		<c:forEach var="article" items="${Articles.roadArticleList }" varStatus="status">
				<div class="well">
					<div class="row">
						<span class="badge"><i class="h5 fa fa-dot-circle-o"></i> 조회 ${article.getArticleHit() }</span>
						<span class="badge"><i class="h5 fa fa-reply"></i> 댓글 ${article.getReplyHit() }</span>
						<span class="badge"><i class="h5 fa fa-user"></i> 참여 ${article.getEntryMember() }</span> &nbsp;&nbsp;&nbsp;&nbsp;
						<span>
							<label class="h3">
								<i class="fa fa-volume-up"></i>
								<span class="badge">${article.getWriterNickName() }</span> 
								<a href="<c:url value="RiderView?articleId=${article.getArticleId()}"/>">${article.getContent() }</a>
							</label>
						</span>
					</div>
					<div class="row">
						<span class="pull-right">
							<label class="h4"><i class="fa fa-map-marker"></i> ${article.getSplitStartSpot() } <i class="fa fa-long-arrow-right "></i></label>&nbsp;
							<label class="h4"><i class="fa fa-map-marker"></i> ${article.getSplitGoalSpot() }</label>&nbsp;&nbsp;
							<label class="h4"><i class="fa fa-clock-o"></i> ${article.getPlanDay() } ${article.getStartTime() }</label> 
						</span>						
					</div>			
				</div>
	   		</c:forEach>
	   		</c:otherwise>
	   	</c:choose>			
			<!-- paging -->
			<div class="text-center">
				<ul class="pagination">
					<c:if test="${beginPage > 10}">
					  <li><a href="<c:url value="/RiderBoard?p=${beginPage-1}"/>">&laquo;</a></li>
					</c:if>
					<c:forEach var="pno" begin="${beginPage}" end="${endPage}">
					  <li><a href='<c:url value="/RiderBoard?p=${pno}"/>'>${pno}</a></li>
					</c:forEach>
					<c:if test="${endPage < Articles.totalPageCount}">
					  <li><a href="<c:url value="/RiderBoard?p=${endPage + 1}"/>">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
			<!-- paging End -->
		</div>
		<!-- /container End-->
		<!-- modal notice -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<button type="button" class="close" data-dismiss="modal">
		        			<span aria-hidden="true">&times;</span>
		        			<span class="sr-only">Close</span>
		        		</button>
		        		<h4 class="modal-title" id="myModalLabel"><b>공지 사항</b></h4>
		      		</div>
		      		<div class="modal-body">
		      			<div class="page-header">
							<h2>
								<b>8월 17일 임시점검 안내</b> 
							</h2>
						</div>
		      		</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal notice End -->	
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
									<a href="preview">튜토리얼</a> | 
									<a id="navNotice">공지사항</a> |
									<a href="freeBoard">자유게시판</a> |
									<a href="weather">날씨</a> |
									<a href="contact">문의사항</a> |
									<b><a href="signUp">회원가입</a></b>
								</p>
							</div>
						</div>
						<div class="col-md-6 widget">
							<div class="widget-body">
								<p class="text-right">
									Copyright &copy; 2014, Road With. Designed by rolend Sunq
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
				$('#makeGroup').click(function(){
				<c:choose>
					<c:when test="${id != null}">
					$('form[name=makeGrpFrm]').attr({'method':'post','action':'MakeRiderGroup'}).submit();
					</c:when>
					<c:otherwise>
					alert("로그인 후 사용가능합니다.");
					</c:otherwise>
				</c:choose>
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