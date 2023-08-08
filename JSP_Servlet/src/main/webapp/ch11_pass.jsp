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
	int age;
	%>
	
	<%
	String str= request.getParameter("age");
	age= Integer.parseInt(str);
	%>
	
	<h1>주류구매가 가능합니다.</h1>
	<a href="ch11_start.html">처음으로 이동</a>
</body>
</html>