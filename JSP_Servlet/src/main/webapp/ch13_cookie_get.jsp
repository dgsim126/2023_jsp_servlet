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
		Cookie[] cookies= request.getCookies();
	
		for(int i=0; i<cookies.length; i++){
			String str= cookies[i].getName();
			if(str.equals("cookieN")){
				out.println("생성된 쿠키의 이름과 값<br>");
				out.println("cookies["+i+"] name : "+cookies[i].getName()+"<br>");
				out.println("cookies["+i+"] value : "+cookies[i].getValue()+"<br>");
				out.println("=============================<br>");
			}
		}
	%>
	
	<a href="ch13_cookie_del.jsp">cookie delete</a>
</body>
</html>