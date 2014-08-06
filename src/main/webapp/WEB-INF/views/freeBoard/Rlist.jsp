<%@page import="com.sbaitproject.roadwith.freeboard.vo.ArticleListVo"%>
<%@page import="com.sbaitproject.roadwith.freeboard.service.FreeBoardArticleService"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <%
    	String pageNumberString = request.getParameter("p");
           		int pageNumber = 1;
            	if(pageNumberString != null && pageNumberString.length() > 0){
            		pageNumber = Integer.parseInt(pageNumberString);
            	}
            	
            	FreeBoardArticleService listService = null;
            	ArticleListVo articleListVo = listService.getArticleList(pageNumber);
            	request.setAttribute("listVo", articleListVo);
            	
            	if(articleListVo.getTotalPageCount() > 0){
            		int beginPageNumber = (articleListVo.getRequestPage() - 1) / 10 * 10 + 1;
            		int endPageNumber = beginPageNumber + 9;
            		if(endPageNumber > articleListVo.getTotalPageCount()){
            			endPageNumber = articleListVo.getTotalPageCount();
            		}
            	request.setAttribute("beginPage", beginPageNumber );
            	request.setAttribute("endPage", endPageNumber);
            	}
    %>
    <jsp:forward page="runBoard.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>