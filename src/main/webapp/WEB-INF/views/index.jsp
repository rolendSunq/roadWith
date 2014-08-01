<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
							게시판<span class="creat"></span>
						</a>
						<ul class="dropdown-menu">						
							<li><a href="freeBoard?runBoard class="board">
								런</a></li>
							<li><a href="freeBoard?riderBoard class="board">
								라이더</a></li>						
						</ul>
					</li>
					<li><a href="notice">공지사항</a></li>
					<li><a href="contact">문의사항</a></li>
					<li><a class="btn" href="signin.html?signin">로그인 / 회원가입</a></li>
					<li><a href="Preview">Tutorial</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row" >
				<h1 class="lead" id="imgRi">함께 라이딩하는 즐거움 </h1>
				<p class="tagline" id="imgRi2">그룹으로 모여 달리는 재미와 기록은 라이딩의 더 큰 가치를 제공합니다.<!-- <a href="http://www.gettemplate.com/?utm_source=progressus&amp;utm_medium=template&amp;utm_campaign=progressus">GetTemplate</a></p>
				<p><a class="btn btn-default btn-lg" role="button">MORE INFO</a> <a class="btn btn-action btn-lg" role="button">DOWNLOAD NOW</a> --></p>
		
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
					<h4 class="btn" id="iconAb"><i class="fa fa-flash fa-5"  id="boardIC" ></i>About</h4></div>
					<div class="h-body text-center">
						<p>[자유롭게 보실 수 있습니다.] RoadRunner를 만들게 된 계기와 제작자들의 간단한 프로필을 공개합니다.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
					<h4 class="btn" id="iconNo" ><i class="fa fa-heart fa-5" id="boardIC" ></i>Notice</h4></div>
					<div class="h-body text-center">
						<p>[정보 확인은 로그인이 필요합니다.] RoadRunner가 어떤 변화를 거쳐왔는지와 업데이트의 기록을 보실수 있습니다.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
					<h4 class="btn" id="iconCo"><i class="fa fa-smile-o fa-5" id="boardIC" ></i>Contact Us</h4></div>
					<div class="h-body text-center">
						<p>[로그인이 필요한 서비스 입니다.] 직접 RoadRunner를 사용해보시며, 불편하거나 개선될 점을 제작자에게 알려주세요!</p>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->

	<!-- container -->
	<div class="container">

		<h2 class="text-center top-space">Frequently Asked Questions</h2>
		<br>

		<div class="row">
			<div class="col-sm-6">
				<h3>Which code editor would you recommend?</h3>
				<p>I'd highly recommend you <a href="http://www.sublimetext.com/">Sublime Text</a> - a free to try text editor which I'm using daily. Awesome tool!</p>
			</div>
			<div class="col-sm-6">
				<h3>Nice header. Where do I find more images like that one?</h3>
				<p>
					Well, there are thousands of stock art galleries, but personally, 
					I prefer to use photos from these sites: <a href="http://unsplash.com">Unsplash.com</a> 
					and <a href="http://www.flickr.com/creativecommons/by-2.0/tags/">Flickr - Creative Commons</a></p>
			</div>
		</div> <!-- /row -->

		<div class="row">
			<div class="col-sm-6">
				<h3>Can I use it to build a site for my client?</h3>
				<p>
					Yes, you can. You may use this template for any purpose, just don't forget about the <a href="http://creativecommons.org/licenses/by/3.0/">license</a>, 
					which says: "You must give appropriate credit", i.e. you must provide the name of the creator and a link to the original template in your work. 
				</p>
			</div>
			<div class="col-sm-6">
				<h3>Can you customize this template for me?</h3>
				<p>Yes, I can. Please drop me a line to sergey-at-pozhilov.com and describe your needs in details. Please note, my services are not cheap.</p>
			</div>
		</div> <!-- /row -->

		<div class="jumbotron top-space">
			<h4>Dicta, nostrum nemo soluta sapiente sit dolor quae voluptas quidem doloribus recusandae facere magni ullam suscipit sunt atque rerum eaque iusto facilis esse nam veniam incidunt officia perspiciatis at voluptatibus. Libero, aliquid illum possimus numquam fuga.</h4>
     		<p class="text-right"><a class="btn btn-primary btn-large">Learn more »</a></p>
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
				$(location).attr('href','freeBoard?riderBoard');
			});
			
			$("#imgRu").click(function() {
				 //location.replace("freeBoard?freeBoard");
				$(location).attr('href','freeBoard?runBoard');
			});
			
		});
	</script>
	<script src="./resources/assets/js/headroom.min.js"></script>
	<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
	<script src="./resources/assets/js/template.js"></script>
</body>
</html>