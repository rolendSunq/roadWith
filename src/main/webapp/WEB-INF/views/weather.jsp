<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">
		<title>날씨 검색</title>
		<link rel="shortcut icon" href="./resources/assets/images/gt_favicon.png">
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
		</header>
		
		<div class="container">
			<div class="row">
				<h1 class="text-center" >날씨 검색</h1>
				<br></br>
				<form name="doFrm" class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-md-12 form-inline">
							<div class="form-group col-md-1" >
								<h4>도 / 시</h4>
							</div>
							<div class="form-group col-md-2">
								<select class="form-control" id="doSlt" name="doName">
									<option>강원도</option>
									<option>경기도</option>
									<option>경상남도</option>
									<option>경상북도</option>
									<option>광주광역시</option>
									<option>대구광역시</option>
									<option>대전광역시</option>
									<option>부산광역시</option>
									<option>서울특별시</option>
									<option>세종특별자치시</option>
									<option>울산광역시</option>
									<option>인천광역시</option>
									<option>전라남도</option>
									<option>전라북도</option>
									<option>제주특별자치도</option>
									<option>충청남도</option>
									<option>충청북도</option>
								</select>
							</div>
							<div class="form-group col-md-2" >
								<h4 class="text-right">시 / 군 / 구&nbsp; &nbsp;</h4>
							</div>
							<div class="form-group col-md-4">
								<select class="form-control" id="localSlt" name="localName">
									<option>지역선택</option>
									<c:forEach var="result" items="${zoneList}">
									<option value="${result.zoneNumber}">${result.sigu }</option>
									</c:forEach>
								</select>
							</div>
	 					</div>
					</div>
					<input type="hidden" name="hdoName" id="hName" value="${doName}">
					<input type="hidden" name="hLoName" id="lName" value="${localName}">
					<input type="hidden" name="weatherUrl" id="wrl">
				</form>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
		<c:catch var="err">
			<c:choose>
			<c:when test="${weatherUrl == null}">
			<c:import var="weather"	url="http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1156055000"/>
			</c:when>
			<c:otherwise>
			<c:import var="weather"	url="${weatherUrl }"/>
			</c:otherwise>
			</c:choose>
			<!-- xml 파싱하기 -->
			<x:parse var="wrss" xml="${weather}"/>
					<table class="table">
						<tr>
							<td >
								<div class="col-md-6">
									검색 장소 :
								</div>
							</td>
							<td>
								<div class="col-md-8"><x:out select="$wrss/rss/channel/item/category"/></div>
							</td>
						</tr>
									
						<tr>
							<td>
								<div class="col-md-7">
									업데이트 시간 :
								</div>
							</td>
							<td>
								<div class="col-md-8"><x:out select="$wrss/rss/channel/pubDate"/></div>	
							</td>		
						</tr>	
					</table>
				</div>
			<br>
			
			<table class="table table-bordered" id="serch">
				<tr>
					<td>시간</td>
					<td align="center"> ~ <x:out select='$wrss/rss/channel/item/description/body/data[1]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[1]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[2]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[2]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[3]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[3]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[4]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[4]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[5]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[5]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[6]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[6]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[7]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[7]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[8]/hour'></x:out>시 </td>
				</tr>
	
				<tr>
					<td>날씨</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[1]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[2]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[3]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[4]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[5]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[6]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[7]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[8]/wfKor"></x:out></td>
				</tr>
	
				<tr>
					<td>기온</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[1]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[2]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[3]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[4]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[5]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[6]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[7]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[8]/temp"></x:out>도</td>
				</tr>
	
				<tr>
					<td>습도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[1]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[2]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[3]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[4]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[5]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[6]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[7]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[8]/reh"></x:out>%</td>
				</tr>
	
				<tr>
					<td>강수확률</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[1]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[2]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[3]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[4]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[5]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[6]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[7]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[8]/pop"></x:out>%</td>
				</tr>
				
				<tr>
					<td>풍속</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[1]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[2]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[3]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[4]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[5]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[6]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[7]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[8]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
				</tr>
				
				<tr>
					<td>풍향</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[1]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[2]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[3]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[4]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[5]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[6]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[7]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[8]/wdKor"></x:out>풍</td>
				</tr>
			</table>
			
			<br /><br />
			
			<table class="table table-bordered" id="serch">
				<tr>
					<td>시간</td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[8]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[9]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[9]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[10]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[10]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[11]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[11]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[12]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[12]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[13]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[13]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[14]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[14]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[15]/hour'></x:out>시 </td>
					<td align="center"> <x:out select='$wrss/rss/channel/item/description/body/data[15]/hour'></x:out>시 ~ <x:out select='$wrss/rss/channel/item/description/body/data[16]/hour'></x:out>시 </td>
				</tr>
	
				<tr>
					<td>날씨</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[9]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[10]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[11]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[12]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[13]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[14]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[15]/wfKor"></x:out></td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[16]/wfKor"></x:out></td>
				</tr>
	
				<tr>
					<td>기온</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[9]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[10]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[11]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[12]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[13]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[14]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[15]/temp"></x:out>도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[16]/temp"></x:out>도</td>
				</tr>
	
				<tr>
					<td>습도</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[9]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[10]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[11]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[12]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[13]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[14]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[15]/reh"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[16]/reh"></x:out>%</td>
				</tr>
	
				<tr>
					<td>강수확률</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[9]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[10]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[11]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[12]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[13]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[14]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[15]/pop"></x:out>%</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[16]/pop"></x:out>%</td>
				</tr>
				
				<tr>
					<td>풍속</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[9]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[10]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[11]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[12]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[13]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[14]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[15]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
						<td align="center">
							<fmt:formatNumber pattern="#.00">
								<x:out select="$wrss/rss/channel/item/description/body/data[16]/ws"/>
							</fmt:formatNumber>(m/s)
						</td>
				</tr>
				
				<tr>
					<td>풍향</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[9]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[10]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[11]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[12]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[13]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[14]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[15]/wdKor"></x:out>풍</td>
					<td align="center"><x:out select="$wrss/rss/channel/item/description/body/data[16]/wdKor"></x:out>풍</td>
				</tr>
			</table>
			</c:catch>
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
		<script type="text/javascript">
			var doName = $('#hName').val();
			var localName = $('#lName').val();
			$(document).ready(function(){
				if (doName != null) {
					$("#doSlt").val(doName).attr("selected", "selected");
				}
				
				if (localName != null) {
					$('#locaSlt').val(localName).attr('selected', 'selected');
				}
				
				$("#doSlt").change(function(){
					//var doName = $("#doSlt option:selected").val();
					
					$('form[name=doFrm]').attr('action', 'weatherInfo').submit();
				});
				
				$('#localSlt').change(function(){
					var selectName = $('#localSlt option:selected').text();
					$('#lName').val(selectName);
					var url = 'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=';
					var zoneNum = $("#localSlt option:selected").val();
					url  = url + zoneNum;
					$('#wrl').val(url);
					$('form[name=doFrm]').attr('action', 'supportUrl').submit();
				});
			});
		</script>
		<script src="./resources/assets/js/headroom.min.js"></script>
		<script src="./resources/assets/js/jQuery.headroom.min.js"></script>
		<script src="./resources/assets/js/template.js"></script>
	</body>
</html>