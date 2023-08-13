<%@page import="java.util.Enumeration"%>
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
		Object obj1= session.getAttribute("mySessionName");
		String mySessionName= (String)obj1;
		out.println(mySessionName+"<br>");
		
		Object obj2= session.getAttribute("myNum");
		Integer myNum= (Integer)obj2;
		out.println(myNum+"<br>");
		
		out.println("<br>==========================================<br><br>");
		
		String sName;
		String sValue;
		Enumeration enumeration= session.getAttributeNames();
		while(enumeration.hasMoreElements()){
			sName= enumeration.nextElement().toString();
			sValue= session.getAttribute(sName).toString();
			out.println("sName: "+sName+"<br>");
			out.println("sValue: "+sValue+"<br>");
		}
		
		out.println("<br>==========================================<br><br>");
		
		String sessionID= session.getId(); // 한 브라우저 당 고유한 아이디(컨테이너가 알아서 생성)
		out.println("sessionID: "+sessionID+"<br>");
		int sessionInter= session.getMaxInactiveInterval(); // 유효시간 확인
		out.println("sessionInter: "+sessionInter+"<br>");
		
		out.println("<br>==========================================<br><br>");
		
		session.removeAttribute("mySessionName"); // 해당 이름을 가지고 있는 세션 삭제
		Enumeration enumeration1= session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			sName= enumeration1.nextElement().toString();
			sValue= session.getAttribute(sName).toString();
			out.println("sName: "+sName+"<br>");
			out.println("sValue: "+sValue+"<br>");
		}
		
		out.println("<br>==========================================<br><br>");
		
		session.invalidate(); // 모든 세션 삭제
		if(request.isRequestedSessionIdValid()){
			out.println("session valid");
		}else{
			out.println("session invalid");
		}
	%>
	
</body>
</html>