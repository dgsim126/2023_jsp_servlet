<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 내부객체 session을 이용하기 때문에 바로 가용 가능
		session.setAttribute("mySessionName", "mySessionData"); // name, value
		session.setAttribute("myNum", 12345);
	%>
	
	<a href="ch14_session_get.jsp">session get</a>
</body>
</html>