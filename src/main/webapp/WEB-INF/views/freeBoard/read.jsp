<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.sbaitproject.roadwith.freeboard.service.ReadArticleService" %>
<%@ page import="com.sbaitproject.roadwith.freeboard.service.ArticleNotFoundException" %>
<%@ page import="com.sbaitproject.roadwith.freeboard.vo.Article" %>
<%
		int articleId = Integer.parseInt(request.getParameter("articleId"));
		String viewPage = null;
		Article article = ReadArticleService.getInstance().readArticle(articleId);
		request.setAttribute("article", article);
		viewPage = "/read_view.jsp";
%>
<<jsp:forward page="<%=viewPage %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>