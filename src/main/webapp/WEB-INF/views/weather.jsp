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

		<style type="text/css">
			#weatherForm {height: 150px;}
		
		</style>
		
		
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
			<div class="col-md-4 form-inline"></div>
					<div class="col-md-4 form-inline" id="weatherForm">
						<div class="alert alert-warning"  >					
							<h1 class="text-center" ><b> 날씨 검색 </b></h1>
						</div>
					</div>					
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
				<div class="col-md-8-offset-1">
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
								<div class="col-md-8"><b><x:out select="$wrss/rss/channel/item/category"/></b></div>
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
		<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
		<script src="./resources/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				var doName = $('#hName').val();
				var localName = $('#lName').val();
				$("#doSlt").val(doName).attr("selected", "selected");
				$('#locaSlt').val(localName).attr('selected', 'selected');
				
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