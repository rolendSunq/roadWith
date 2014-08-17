<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>로드러너</title>
		<link rel="shortcut icon" href="./resources/assets/images/gt_favicon.png">
		<link rel="stylesheet" media="screen" href="./resources/assets/css/googleFont.css">
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
	
		<!-- Custom styles for our template -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-theme.css" media="screen" >
		<link rel="stylesheet" href="./resources/assets/css/noImgCommon.css">
		
		<!-- daumMap size -->
		<style type="text/css">
			#mapArea {
				margin: auto;
				width: 800px;
	  			height: 480px;
	  			border: 1px;
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
						<label for="startTime" class="col-md-3 control-label">출발 시간</label>${currentDate }
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
					<div class="form-group">
						<div id="mapArea"></div>
					</div>
					<div class="form-group">
						<p></p>
						<div class="col-md-3 text-right">
							<button type="button" class="btn btn-default" name="enter" id="enter"> 등록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		
	<!-- modal notice-->
	
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

<!-- modal notice-->
		
	
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
		<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=f725885371d20e1e3d1b4867f75a984a"></script>
		<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
		<script src="./resources/assets/js/bootstrap.min.js"></script>
		<script>
			var pinCreateCount = 0;
		 	var oSeoulCityPoint = new nhn.api.map.LatLng(37.509931, 126.981784);
			var defaultLevel = 9;
			var oMap = new nhn.api.map.Map(document.getElementById('#mapArea'), { 
											point : oSeoulCityPoint,
											zoom : defaultLevel,
											enableWheelZoom : true,
											enableDragPan : true,
											enableDblClickZoom : false,
											mapMode : 0,
											activateTrafficMap : false,
											activateBicycleMap : true,
											minMaxLevel : [ 1, 14 ],
											size : new nhn.api.map.Size(800, 480)});
			var oSlider = new nhn.api.map.ZoomControl();
			oMap.addControl(oSlider);
			oSlider.setPosition({
					top : 10,
					left : 10
			});
	
			var oMapTypeBtn = new nhn.api.map.MapTypeBtn();
			oMap.addControl(oMapTypeBtn);
			oMapTypeBtn.setPosition({
					bottom : 10,
					right : 80
			});
			
			var oThemeMapBtn = new nhn.api.map.ThemeMapBtn();
			oThemeMapBtn.setPosition({
					bottom : 10,
					right : 10
			});
			oMap.addControl(oThemeMapBtn);
			/*
			var oBicycleGuide = new nhn.api.map.BicycleGuide(); // - 자전거 범례 선언
			oBicycleGuide.setPosition({
					top : 10,
					right : 10
			}); // - 자전거 범례 위치 지정
			oMap.addControl(oBicycleGuide);// - 자전거 범례를 지도에 추가.
			*/
			var oTrafficGuide = new nhn.api.map.TrafficGuide(); // - 교통 범례 선언
			oTrafficGuide.setPosition({
					bottom : 30,
					left : 10
			});  // - 교통 범례 위치 지정.
			oMap.addControl(oTrafficGuide); // - 교통 범례를 지도에 추가.
	
			var trafficButton = new nhn.api.map.TrafficMapBtn(); // - 실시간 교통지도 버튼 선언
			trafficButton.setPosition({
					bottom:10, 
					right:150
			}); // - 실시간 교통지도 버튼 위치 지정
			oMap.addControl(trafficButton);
	
			var oSize = new nhn.api.map.Size(28, 37);
			var oOffset = new nhn.api.map.Size(14, 37);
			var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);
	
			var oInfoWnd = new nhn.api.map.InfoWindow();
			oInfoWnd.setVisible(false);
			oMap.addOverlay(oInfoWnd);
	
			oInfoWnd.setPosition({
					top : 20,
					left :20
			});
	
			var oLabel = new nhn.api.map.MarkerLabel(); // - 마커 라벨 선언.
			oMap.addOverlay(oLabel); // - 마커 라벨 지도에 추가. 기본은 라벨이 보이지 않는 상태로 추가됨.
	
			oInfoWnd.attach('changeVisible', function(oCustomEvent) {
					if (oCustomEvent.visible) {
							oLabel.setVisible(false);
					}
			});
			
			var oPolyline = new nhn.api.map.Polyline([], {
					strokeColor : '#f00', // - 선의 색깔
					strokeWidth : 5, // - 선의 두께
					strokeOpacity : 0.5 // - 선의 투명도
			}); // - polyline 선언, 첫번째 인자는 선이 그려질 점의 위치. 현재는 없음.
			oMap.addOverlay(oPolyline); // - 지도에 선을 추가함.
	
			oMap.attach('mouseenter', function(oCustomEvent) {
	
					var oTarget = oCustomEvent.target;
					// 마커위에 마우스 올라간거면
					if (oTarget instanceof nhn.api.map.Marker) {
							var oMarker = oTarget;
							oLabel.setVisible(true, oMarker); // - 특정 마커를 지정하여 해당 마커의 title을 보여준다.
					}
			});
	
			oMap.attach('mouseleave', function(oCustomEvent) {
	
					var oTarget = oCustomEvent.target;
					// 마커위에서 마우스 나간거면
					if (oTarget instanceof nhn.api.map.Marker) {
							oLabel.setVisible(false);
					}
			});
	
			oMap.attach('click', function(oCustomEvent) {
					var pinTitle = '';
					var oPoint = oCustomEvent.point;
					var oTarget = oCustomEvent.target;
					oInfoWnd.setVisible(false);
					
					// 마커 클릭하면
					if (oTarget instanceof nhn.api.map.Marker) {
							// 겹침 마커 클릭한거면
							if (oCustomEvent.clickCoveredMarker) {
									return;
							}
							// - InfoWindow 에 들어갈 내용은 setContent 로 자유롭게 넣을 수 있습니다. 외부 css를 이용할 수 있으며, 
							// - 외부 css에 선언된 class를 이용하면 해당 class의 스타일을 바로 적용할 수 있습니다.
							// - 단, DIV 의 position style 은 absolute 가 되면 안되며, 
							// - absolute 의 경우 autoPosition 이 동작하지 않습니다. 
							/*
							oInfoWnd.setContent('<DIV style="border-top:1px solid; border-bottom:2px groove black; border-left:1px solid; border-right:2px groove black;margin-bottom:1px;color:black;background-color:white; width:auto; height:auto;">'+
									'<span style="color: #000000 !important;display: inline-block;font-size: 12px !important;font-weight: bold !important;letter-spacing: -1px !important;white-space: nowrap !important; padding: 2px 5px 2px 2px !important">' + 
									+ 'hello world! <br /> ' + oTarget.getPoint()
									+'<span></div>');
							*/
							oInfoWnd.setPoint(oTarget.getPoint());
							oInfoWnd.setPosition({right : 15, top : 30});
							oInfoWnd.setVisible(true);
							oInfoWnd.autoPosition();
							return;
					}
					
					pinCreateCount = pinCreateCount + 1;
	
					if (pinCreateCount >= 3) {
						return false;
					}
					
					if (pinCreateCount == 1) {
						pinTitle = '출발지점';
					} else {
						pinTitle = '도착지점';
					}
					
					var oMarker = new nhn.api.map.Marker(oIcon, { title : pinTitle });
					oMarker.setPoint(oPoint);
					oMap.addOverlay(oMarker);
	
					var aPoints = oPolyline.getPoints(); // - 현재 폴리라인을 이루는 점을 가져와서 배열에 저장.
					aPoints.push(oPoint); // - 추가하고자 하는 점을 추가하여 배열로 저장함.
					oPolyline.setPoints(aPoints); // - 해당 폴리라인에 배열에 저장된 점을 추가함
			});
			
			oMap.attach('dblclick', function(oCustomEvent) {
				alert('hi yo~~');
			});
			
			
		
			
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
		<script type="text/javascript"></script>
		<script>
			$(document).ready(function(){
				$('#navNotice').click(function(){
					$('#myModal').modal('show');
				});
			});
		</script>
	</body>
</html>
