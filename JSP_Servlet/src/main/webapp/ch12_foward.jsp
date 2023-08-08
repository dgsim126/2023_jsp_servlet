<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ch12_main.jsp 페이지입니다.</h1>
	<jsp:forward page="ch12_include.jsp">
		<jsp:param name="id" value="아이디	"/>
		<jsp:param name="pw" value="비밀번호"/>
	</jsp:forward>
</body>
</html>