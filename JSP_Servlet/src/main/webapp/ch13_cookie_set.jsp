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
		//                        이름        속성
		Cookie cookie= new Cookie("cookieN", "cookieV");
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
	%>
	
	<a href="ch13_cookie_get.jsp">cookie get</a>
</body>
</html>