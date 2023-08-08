<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	
	<h1>ch12_include.jsp 페이지입니다.</h1>
	<jsp:include page="ch12_include02.jsp"/>
	<h1>다시 ch12_include.jsp 페이지입니다.</h1>
	
	<%
		id= request.getParameter("id");
		pw= request.getParameter("pw");
	%>
	
	id: <%=id %>
	pw: <%=pw %>
</body>
</html>