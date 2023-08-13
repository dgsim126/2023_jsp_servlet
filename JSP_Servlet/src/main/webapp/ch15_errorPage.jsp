<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 추가한 부분 -->
<%@page isErrorPage="true" %>
<%response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>500 Error</h1>
	<%=exception.getMessage() %>
</body>
</html>