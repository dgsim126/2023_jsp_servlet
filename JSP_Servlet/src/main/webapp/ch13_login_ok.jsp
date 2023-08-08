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
	
	<%
		id= request.getParameter("id");
		pw= request.getParameter("pw");
		
		if(id.equals("id") && pw.equals("pw")){
			Cookie cookie= new Cookie("id", id);
			cookie.setMaxAge(60);
			response.addCookie(cookie);
			response.sendRedirect("ch13_welcome.jsp");
		}else{
			response.sendRedirect("ch13_login.html");
		}
	%>
</body>
</html>