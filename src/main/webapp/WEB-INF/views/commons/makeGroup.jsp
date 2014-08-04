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
	<link rel="stylesheet" href="./resources/assets/css/makeGroup.css">
	
	<!-- daumMap size -->
	<style type="text/css">
		#mapArea {
			margin: auto;
			width: 900px;
  			height: 500px;
  			border: 0;
		}
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
				<a class="navbar-brand" href="/roadwith"><img src="./resources/assets/images/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><a href="/roadwith">홈</a></li>
					<li  class="active"><a href="about">개요</a></li>
					<li><a href="freeBoard?freeBoard" class="board" >게시판</a></li>
					<li><a href="notice">공지사항</a></li>
					<li><a href="contact">문의사항</a></li>
					<li><a class="btn" href="signout"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->
	
	<header id="head"></header>

	<!-- container -->
	<div class="container">
		<div class="row">
		</div>
		<div class="row">
			<h1 class="text-center">${section} 생성</h1>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="titleName" class="col-md-3 control-label">라이딩 제목</label>
					<div class="col-md-6">
						<input type="text" name="title" id="titleName" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="titleName" class="col-md-3 control-label">시작일</label>
					<div class="col-md-6 form-inline">
						<div class="form-group col-md-3">
							<h4>2014년 8월</h4>
						</div>
						<div class="form-group col-md-2">
							<select class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
								<option>24</option>
								<option>25</option>
								<option>26</option>
								<option>27</option>
								<option>28</option>
								<option>29</option>
								<option>30</option>
								<option>31</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<h4>&nbsp;일</h4>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="startTime" class="col-md-3 control-label">출발 시간</label>
					<div class="col-md-2">
						<input type="text" class="form-control" name="startTime" id="startTime">
					</div>
				</div>
				<div class="form-group">
					<label for="entryMember" class="col-md-3 control-label">참여 인원</label>
					<div class="col-md-2">
						<input type="text" class="form-control" name="entryMember" id="entryMember">
					</div>
				</div>
				<div class="form-group">
					<label for="startSpot" class="col-md-3 control-label">출발 장소</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="startSpot" id="startSpot" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label for="goalSpot" class="col-md-3 control-label">도착 장소</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="goalSpot" id="goalSpot" readonly="readonly">
					</div>
				</div>
				<div id="mapArea"></div>
				<div class="form-group">
					<p></p>
					<div class="col-md-3 text-right">
						<button type="button" class="btn btn-default" name="enter" id="enter"> 등록</button>
					</div>
				</div>
			</form>
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
	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=cdf1005f73411b433607ebee97f67c482da9e2c7"></script>
	<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		/*
		function mapInit(){
			var lat = 37.553351;	//pos.coords.latitude;
			var lng = 126.878891;	//pos.coords.longitude;
			//alert("위도: " + lat + ", " + "경도: " + lng);
			var mapArea = document.getElementById("mapArea");
			var pos = new daum.maps.LatLng(lat, lng);
			var myMap = new daum.maps.Map(mapArea, {
				center: pos, 
				level: 3,
				//mapTypeId: daum.maps.MapTypeId.HYBRID,
				draggable: true
			});
			var pin = new daum.maps.Marker({position:pos});
			pin.setMap(myMap);
			pin.setTitle("타겟 지정");
			
			myMap.addControl( new daum.maps.ZoomControl(), daum.maps.ControlPosition.TOPRIGHT);
			myMap.addControl( new daum.maps.MapTypeControl(), daum.maps.ControlPosition.BOTTOMRIGHT);
			*/
			/*
			var rvArea = document.getElementById("rvArea");
			var rvMap = new daum.maps.Roadview(rvArea);
			var manager = new daum.maps.RoadviewClient();
			// string panoId: 촬영을 한 자동차
			manager.getNearestPanoId(pos, 100, function (panoId){
				rvMap.setPanoId(panoId, pos);
			}); 
		}
			*/
		var myMap;
		function mapInit() {
			var let1, let2, lng1, lng2;
			let1 = 37.553351;
			lng1 = 126.878891;
			let2 = 37.540168;
			lng2 = 126.900349;
			myMap = new daum.maps.Map(document.getElementById('mapArea'), {
				center: new daum.maps.LatLng(37.537123, 127.005523),
				level: 3
			});

			// 좌표값들 지정
			var points = new Array();
			points[0] = new daum.maps.LatLng(let1, lng1);
			points[1] = new daum.maps.LatLng(let2, lng2);

			// 빈 LatLngBounds 객체 생성
			var bounds = new daum.maps.LatLngBounds();
			
			for(var i = 0; i < points.length; i++)
			{
				// 해당 좌표에 marker 올리기
				new daum.maps.Marker({position:points[i]}).setMap(myMap);
				// LatLngBounds 객체에 해당 좌표들을 포함
				bounds.extend(points[i]);
			}
			// 좌표가 채워진 LatLngBounds 객체를 이용하여 지도 영역을 확장
			myMap.setBounds(bounds);
		}
		
		$(document).ready(function(){
			mapInit();
		});
	</script>
	<script src="./resources/assets/js/headroom.min.js"></script>
	<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
	<script src="./resources/assets/js/template.js"></script>
</body>
</html>