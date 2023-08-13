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
			session.setAttribute("id", id);
			response.sendRedirect("ch14_welcome.jsp");
		}else{
			response.sendRedirect("ch14_login.html");
		}
	%>
</body>
</html>