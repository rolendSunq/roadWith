<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.sbaitproject.roadwith.freeboard.service.WriteArticleService" %>
<%@ page import="com.sbaitproject.roadwith.freeboard.vo.Article" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="writingRequest" 
class="com.sbaitproject.roadwith.freeboard.service.WritingRequest"/>
<jsp:setProperty property="*" name="writingRequest"/>
<%
		Article postedArticle = WriteArticleService.getInstance().write(writingRequest);
		request.setAttribute("postedArticle", postedArticle);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글 작성완료</title>
</head>
<body>
	게시글을 등록 하였습니다.
	<br/>
	<a href='<c:url value="/list.jsp" type="button"/>'>게시판으로</a>
	<a href='<c:url value="/read.jsp?articleId=${postedArticle.id }" type="button"/>'>게시글확인</a>
</body>
</html>