<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
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
		<link rel="stylesheet" href="./resources/assets/css/noImgCommon.css">
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
					<a class="navbar-brand" href="/roadwith"><img src="./resources/assets/images/logotest2.png" alt="Progressus HTML5 template"></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav pull-right">
						<li class="active"><a href="/roadwith">홈</a></li>
						<li><a href="about">개요</a></li>
						<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">게시판 <b class="caret"></b></a>
						<ul class="dropdown-menu">
						<li><a href="freeBoard?freeBoard">자유게시판</a></li>
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
		<div><br><br><br><br></div>
		<div class="container"	>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<!-- readBox -->
					<div class="panel panel-info" id="readBox">
						<div class="panel-heading">
							<div class="form-inline">
								<div>
									<h3 class="panel-title"><b>${article.title}</b></h3>
								</div>
								<div class="text-right">
									<div class="form-group">
										<h4 class="text-right"><small><spqn class="badge">${article.getWriterName()}</spqn></small></h4>
									</div>
									<div class="form-group">
										<h4 class="text-right"><small><fmt:formatDate value="${article.getPostingDate()}" pattern="yyyy-MM-dd"/></small></h4>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<pre class="row" id="readContent"><c:out value="${article.getContent()}"/></pre>
						</div>
				    </div>
					<!--/readBox End -->
					<!-- updateBox -->
					<div class="panel panel-warning" id="updateBox">
						<form name="updateFrm" method="get" action="updateArticle">
							<div class="panel-heading">
								<div class="form-inline">
									<div>
										<input type="text" id="updateTitle" name="title" class="form-control" value="${article.title}" style="width:100%;">
									</div>
									<div class="text-right">
										<div class="form-group">
											<h4 class="text-right"><small>${article.getWriterName()}</small></h4>
										</div>
										<div class="form-group">
											<h4 class="text-right"><small><fmt:formatDate value="${article.getPostingDate()}" pattern="yyyy-MM-dd"/></small></h4>
										</div>
									</div>
								</div>
							</div>
							<div class="panel-body">
								<textarea rows="3" class="form-control" name="content" id="updateContent">${article.getContent()}</textarea>
								<div class="row">
									<div class="col-md-3">
										<button type="button" class="btn btn-default" id="enterEditBtn"><i class="fa fa-cog"></i> 등록</button>
									</div>
								</div>
							</div>
							<input type="hidden" name="articleId" id="articleIdHid" value="${article.getArticleId() }">
						</form>
				    </div>
					<!--/updateBox End -->
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<!-- replyForm -->
					<div class="panel panel-default" id="replyForm">
						<div class="panel-heading">
							<form name="replyFrm">
								<div class="form-group">
									<div class="col-md-6">
										<h4>reply</h4>
									</div>
									<div class="pull-right col-md-5">
										<div class="input-group">
											<input type="text" class="form-control" id="writerTxt" name="writerName" placeholder="아이디 입력">
											<span class="btn btn-default input-group-addon" id="replyBtn">답글 등록</span>
										</div>
									</div>
									<p>&nbsp;</p>
									<div class="row">
										<textarea rows="3" id="reTextArea" class="form-control" name="content"></textarea>
									</div>
								</div>
								<input type="hidden" name="articleId" value="${article.getArticleId() }">
								<input type="hidden" name="title" value="<i class='fa fa-hand-o-right'></i> re">
							</form>
						</div>
					</div>
					<!-- /replyForm End -->
				</div>
			</div>
		</div>
		<div class="container"	>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<a class="btn btn-default" href="freeBoard"><i class="fa fa-arrow-left"></i> 목록</a>
					<button type="button" class="btn btn-default" id="replyDisplayBtn"><i class="fa fa-hand-o-right"></i> 답글</button>
					<button type="button" class="btn btn-default" id="updateDisplayBtn"><i class="fa fa-pencil-square-o"></i> 수정</button>
					<button type="button" class="btn btn-default" id="deleteArticleBtn"><i class="fa fa-trash-o"></i> 삭제</button>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<ul class="list-group">
					<c:choose>
						<c:when test="${replyArticleList.size() == 0 }"></c:when>
						<c:otherwise>
							<c:forEach var="replyArticle" items="${replyArticleList }">
						<li class="list-group-item list-group-item-success">
							<div>
								<i class="fa fa-comment-o"></i><b> Reply: </b>
								<span class="badge">${replyArticle.getWriterName() }</span> 
								${replyArticle.getContent() }
							</div>
						</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					</ul>
				</div>
			</div>
		</div>
		<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
				  ...
				</div>
			</div>
		</div>
	
		<!-- modal compare PASSWD -->
		
		<div class="modal fade" id="modalPasswd">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" id="cancelPasswdBtn1"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title"><b>패스워드 입력</b></h4>
					</div>
					<div class="modal-body">
						<p id="modalTextPasswd">글작성시 등록한 패스워드 입력</p>
						<input type="text" class="form-control" id="PasswdInp">
						<br/>
						<label id="passwdResult"></label>
					</div>
					<div class="modal-footer">
					    <button type="button" class="btn btn-default" data-dismiss="modal" id="cancelPasswdBtn2">취소</button>
					    <button type="button" class="btn btn-primary" id="adjustTextBtn">확인</button>
				  	</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		
		<!-- /.modal -->

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
		<script>
			var status = 'hide';
			var updateStatus = 'hide';
			var caller = null;
			
			function updateValidation(){
				var titleValue = $('#updateTitle').val();
				var contentValue = $('#updateContent').val();
				
				if (titleValue == '' || titleValue == null || titleValue.length == 0) {
					alert('제목을 입력하세요.');
					$('#updateTitle').focus();
					return false;
				}
				
				if (contentValue == '' || contentValue == null || contentValue.length == 0) {
					alert('내용을 입력하세요.');
					$('#updateContent').focus();
					return false;
				}
				
				return true;
			}
			
			function replyValidation() {
				var titleValue = $('#writerTxt').val();
				var contentValue = $('#reTextArea').val();
				
				if (titleValue == '' || titleValue == null || titleValue.length == 0) {
					alert('제목을 입력하세요.');
					$('#writerTxt').focus();
					return false;
				}
				
				if (contentValue == '' || contentValue == null || contentValue.length == 0) {
					alert('내용을 입력하세요.');
					$('#reTextArea').focus();
					return false;
				}
				
				return true;
			}
			
			function searchPasswd(caller){
				var jsonData = '{\"password\":\"' + $('#PasswdInp').val() + '\",\"articleId\":\"' + $('#articleIdHid').val() + '\"}';
				$.ajax({
				    type : "POST"
				    ,async : true
				    ,url : "ajaxSearchPassword"
				    ,dataType : "json" 
				    ,data : jsonData
				    ,contentType: "application/json; charset=utf-8"
				    ,success : function(response, status, request) {
						if (response == 'valid') {
							if (caller == 'modifyBtn') {
								updateStatus = 'hide';
								$('#readBox').show();
								$('#updateBox').hide();
								$('form[name=updateFrm]').submit();
							} else {
								$(location).attr('href', 'deleteArticle?articleId=' + $('#articleIdHid').val());
							}
						} else {
							$('#passwdResult').html('패스워드가 일치 하지 않습니다.');
							return false;
						}
				    }
				});
			}
			
			function modalValidation(){
				var inpVal = $('#PasswdInp').val();
				if (inpVal == '' || inpVal == null || inpVal.length == 0) {
					alert('패스워드를 입력하세요.');
					$('#PasswdInp').focus();
					return false;
				}
				
				return true;
			}
			
			$(document).ready(function(){
				var title = $('#updateTitle').val();
				var content = $('#updateContent').val();
				$('#replyForm').hide();
				$('#updateBox').hide();
				$('#replyDisplayBtn').click(function(){
					if (status == 'hide') {
						status = 'show';
						$(this).html('<i class="fa fa-hand-o-right"></i> 답글취소');
						$('#replyForm').show();
						$('#updateDisplayBtn').hide();
						$('#deleteArticleBtn').hide();
						$('#writerTxt').focus();
					} else {
						status = 'hide';
						$('#reTextArea').val('');
						$('#writerTxt').val('');
						$('#updateDisplayBtn').show();
						$('#deleteArticleBtn').show();
						$(this).html('<i class="fa fa-hand-o-right"></i> 답글');
						$('#replyForm').hide();
					}
				});
				
				$('#updateDisplayBtn').click(function(){
					if (updateStatus == 'hide') {
						updateStatus = 'show';
						$('#readBox').hide();
						$('#deleteArticleBtn').hide();
						$('#replyDisplayBtn').hide();
						$('#updateBox').show();
						$(this).html('<i class="fa fa-pencil-square-o"></i> 수정취소');
						$('#updateTitle').focus();
					} else{
						updateStatus = 'hide';
						$('#updateBox').hide();
						$('#deleteArticleBtn').show();
						$('#replyDisplayBtn').show();
						$('#readBox').show();
						$(this).html('<i class="fa fa-pencil-square-o"></i> 수정');
						$('#updateTitle').val(title);
						$('#updateContent').val(content);
					}
				});
				
				$('#replyBtn').click(function(){
					if (replyValidation()) {
						status = 'hide';
						$('#replyDisplayBtn').html('<i class="fa fa-hand-o-right"></i> 답글');
						$('#replyForm').hide();
						$('form[name=replyFrm]').attr('action', 'putReply').submit();
					}
				});					
				
				$('#enterEditBtn').click(function() {
					caller = 'modifyBtn';
					$('#modalPasswd').modal('show');					
				});
				
				$('#adjustTextBtn').click(function(){
					if (modalValidation()) {
						searchPasswd(caller);
					}
				});
				
				$('#PasswdInp').click(function(){
					$(this).val('');
					$('#passwdResult').html('');
				});
				
				$('#deleteArticleBtn').click(function(){
					alert('주의: 삭제시 댓글도 같이 삭제됩니다.');
					caller = 'deleteBtn';
					$('#modalPasswd').modal('show');
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
