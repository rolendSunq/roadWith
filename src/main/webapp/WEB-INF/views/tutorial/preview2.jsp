<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>튜토리얼</title>

<link rel="shortcut icon"
	href="./resources/assets/images/gt_favicon.png">
<link rel="stylesheet" media="screen"
	href="./resources/assets/css/googleFont.css">
<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="./resources/assets/css/font-awesome.min.css">

<!-- Custom styles for our template -->
<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css"
	media="screen">
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
				<a class="navbar-brand" href="/roadwith"><img src="./resources/assets/images/logo.png" alt="Progressus HTML5 template"></a>
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
	<header id="head1">
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
		<div class="container">
			<div class="row">
				<div class="page-header">
					<h1>
						게시판 작성 <small>- 장소 설정 -</small>
					</h1>
					<br>
				</div>
			</div>
		</div>
	</header>

	<div class="container">
		<div class="col-md-10 col-md-offset-1">
			<div id="board1">
				<div class="row"></div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="col-md-11  col-md-offset-5">
			<div id="direction">
				<div class="row">
					<i class="fa fa-arrow-down fa-5x"> </i>
				</div>
			</div>
		</div>
	</div>



	<div class="container">
		<div class="row">
			<div class="page-header">
				<h1>
					게시판 작성 <small>- 시간 설정 -</small>
				</h1>
				<br>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="col-md-10 col-md-offset-1">
			<div id="board2">
				<div class="row"></div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="col-md-11  col-md-offset-5">
			<div id="direction">
				<div class="row">
					<i class="fa fa-arrow-down fa-5x"> </i>
				</div>
			</div>
		</div>
	</div>



	<div class="container">
		<div class="row">
			<div class="page-header">
				<h1>
					게시판 작성 <small>- 인원 설정 -</small>
				</h1>
				<br>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="col-md-10 col-md-offset-1">
			<div id="board3">
				<div class="row"></div>
			</div>
		</div>
	</div>


	<div class="jumbotron" id="directionTool">
		<div class="container">
			<div class="row">
				<div class="col-md-6 highlight">
					<div class="h-caption">
						<a href="preview"><h4 class="btn" id="preBtn1"><i class="fa fa-reply"></i>이전</h4></a>
						<a href="/roadwith"><h4 class="btn" id="homeBtn"><i class="fa fa-caret-square-o-up"></i>홈</h4></a> 
						<a href="preview3"><h4 class="btn" id="sufBtn3"><i class="fa fa-share"></i>다음</h4></a>
					</div>
				</div>
			</div>
		</div>
	</div>


		
	<!-- /container -->

	<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">

					<div class="col-md-3 widget">
						<h3 class="widget-title">Contact</h3>
						<div class="widget-body">
							<p>
								+234 23 9873237<br> <a href="mailto:#">some.email@somewhere.com</a><br>
								<br> 234 Hidden Pond Road, Ashland City, TN 37015
							</p>
						</div>
					</div>

					<div class="col-md-3 widget">
						<h3 class="widget-title">Follow me</h3>
						<div class="widget-body">
							<p class="follow-me-icons clearfix">
								<a href=""><i class="fa fa-twitter fa-2"></i></a> <a href=""><i
									class="fa fa-dribbble fa-2"></i></a> <a href=""><i
									class="fa fa-github fa-2"></i></a> <a href=""><i
									class="fa fa-facebook fa-2"></i></a>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">Text widget</h3>
						<div class="widget-body">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Excepturi, dolores, quibusdam architecto voluptatem amet fugiat
								nesciunt placeat provident cumque accusamus itaque voluptate
								modi quidem dolore optio velit hic iusto vero praesentium
								repellat commodi ad id expedita cupiditate repellendus possimus
								unde?</p>
							<p>Eius consequatur nihil quibusdam! Laborum, rerum, quis,
								inventore ipsa autem repellat provident assumenda labore soluta
								minima alias temporibus facere distinctio quas adipisci nam sunt
								explicabo officia tenetur at ea quos doloribus dolorum voluptate
								reprehenderit architecto sint libero illo et hic.</p>
						</div>
					</div>

				</div>
				<!-- /row of widgets -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="#">Home</a> | <a href="about.html">About</a> | <a
									href="sidebar-right.html">Sidebar</a> | <a href="contact.html">Contact</a>
								| <b><a href="signup.html">Sign up</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2014, Your name. Designed by <a
									href="http://gettemplate.com/" rel="designer">gettemplate</a>
							</p>
						</div>
					</div>

				</div>
				<!-- /row of widgets -->
			</div>
		</div>
	</footer>



	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script src="./resources/assets/js/headroom.min.js"></script>
	<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
	<script src="./resources/assets/js/template.js"></script>
</body>
</html>