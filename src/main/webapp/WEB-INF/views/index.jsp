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
	<style type="text/css">
	.img-responsive{
	display : black;
	height : auto;
	max-width : 100%;
	}
	#imgRi {color: black;}
	</style>
</head>

<body class="home">
<img src="..." class="img-responsive" alt="Responsive image">
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

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row" >
				<h1 class="lead" id="imgRi">함께 라이딩하는 즐거움</h1>
				<p class="tagline" id="imgRi2"><a href="roadContent">그룹으로 모여 달리는 재미와 기록은 라이딩의 더 큰 가치를 제공합니다.</a><!-- <a href="http://www.gettemplate.com/?utm_source=progressus&amp;utm_medium=template&amp;utm_campaign=progressus">GetTemplate</a></p>
				<p><a href="roadContent" class="btn btn-default btn-lg" role="button">MORE INFO</a> <a class="btn btn-action btn-lg" role="button">DOWNLOAD NOW</a> --></p>
		
			</div>
		</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<div id="content1">
		<div class="container">
			<div class="row" >
				<h1 class="lead" id="imgRu">같이 달리는 재미</h1>
				<p class="text-muted" id="imgRu2">
					함께 달리며 서로의 호흡을 나누면 더 즐겁습니다
				</p>
			</div>
		</div>
	</div>
	<!-- /Intro-->
		
	<!-- Highlights - jumbotron -->
	<div class="jumbotron">
		<div class="container">
			<!-- 
			<h3 class="text-center thin">Reasons to use this template</h3>
			 -->
			
			<div class="row">
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption" >		
					<h4 class="btn" id="iconBtn"><i class="fa fa-list fa-5" id="boardIC" ></i>Free Board</h4></div>
					<div class="h-body text-center">
						<p>[글을 남기시려면 회원 가입이 필요합니다.] 자유로운 생각, 회원들간의 소통등을 통해서 여러가지 정보와 나눔을 얻을수 있습니다.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
					<h4 class="btn" id="iconAb"><i class="fa fa-eye fa-5"  id="boardIC" ></i>About</h4></div>
					<div class="h-body text-center">
						<p>[자유롭게 보실 수 있습니다.] RoadWith를 만들게 된 계기와 제작자들의 간단한 프로필을 공개합니다.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
					<h4 class="btn" id="iconNo" ><i class="fa fa-file-text fa-5" id="boardIC" ></i>Notice</h4></div>
					<div class="h-body text-center">
						<p>[정보 확인은 로그인이 필요합니다.] RoadWith가 어떤 변화를 거쳐왔는지와 업데이트의 기록을 보실수 있습니다.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
					<h4 class="btn" id="iconCo"><i class="fa fa-envelope fa-5" id="boardIC" ></i>Contact Us</h4></div>
					<div class="h-body text-center">
						<p>[로그인이 필요한 서비스 입니다.] 직접 RoadWith를 사용해보시며, 불편하거나 개선될 점을 제작자에게 알려주세요!</p>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->

	<!-- container -->
	<div class="container">

		<h2 class="text-center top-space">후원 / 협력사 소개</h2>
		<h3 class="text-center">스포츠 브랜드</h3>
		<br>

		<div class="center-block row">
			<div class="col-md-4">
				<img src="./resources/assets/images/Adidas.jpg" class="img-rounded" alt="Responsive image">
			</div>
			<div class="col-md-4">
				<img src="./resources/assets/images/Asics.jpg" class="img-rounded" alt="Responsive image">
			</div>
			<div class="col-md-4">
				<img src="./resources/assets/images/FILA.jpg" class="img-rounded" alt="Responsive image">
			</div>
			<div class="col-md-4">
				<img src="./resources/assets/images/Puma.jpg" class="img-rounded" alt="Responsive image">
			</div>
			<div class="col-md-4">
				<img src="./resources/assets/images/Reebok.jpg" class="img-rounded" alt="Responsive image">
			</div>
			<div class="col-md-4">
				<img src="./resources/assets/images/Nike.jpg" class="img-rounded" alt="Responsive image">
			</div>
		</div> <!-- /row -->
		
		<h3 class="text-center">자전거 브랜드</h3>
		<br>

		<div class="row">
			<div class="col-md-4">
				<img src="./resources/assets/images/BIANCHI.jpg" class="img-rounded" alt="Responsive image">
			</div>
			<div class="col-md-4">
				<img src="./resources/assets/images/TREK.jpg" class="img-rounded" alt="Responsive image">
			</div>
			
			<div class="col-md-4">
				<img src="./resources/assets/images/ALTON.jpg" class="img-rounded" alt="Responsive image">
			</div>
		</div> <!-- /row -->

		<div class="jumbotron top-space">
			<h4>저희와 함께할 후원사 및 협력사를 모집하고있습니다!</h4>
     		<p class="text-right"><a class="btn btn-primary btn-large">후원하러 가기 »</a></p>
  		</div>

</div>	<!-- /container -->
	
	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->
	
	<!-- Modal -->
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
								Copyright &copy; 2014, Road With. Designed by rolend Sunq</a> 
							</p>
						</div>
					</div>
				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="./resources/assets/js//jquery-1.11.1.min.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function (){
			$('i').hover(function() {
				$(this).css("color","red");
			},
			function() {
				$(this).css("color","#333");
			});
			
			$("#imgRi").hover(function() {
				$(this).css("color","#FFEC3A");
			},
			function() {
				$(this).css("color","#FF9433");
			});
			
			$("#imgRi").hover(function() {
				$("#imgRi2").css("color","#FFEC3A");
			},
			function() {
				$("#imgRi2").css("color","#E85F08");
			});
			
			$("#imgRu").hover(function() {
				$(this).css("color","#19009E");
			},
			function() {
				$(this).css("color","#3B96E8");
			});
			
			$("#imgRu").hover(function() {
				$("#imgRu2").css("color","#19009E");
			},
			function() {
				$("#imgRu2").css("color","#0B44FF");
			});
			
			$("#iconBtn").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','freeBoard?freeBoard');
			});
			
			$("#iconNo").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','notice');
			});
			
			$("#iconCo").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','contact');
			});
			
			$("#iconAb").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','about');
			});
			
			$("#imgRi").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','roadContent');
			});
			
			$("#imgRu").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','');
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