<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 선언 -->
	<%!
	int i= 10;
	String str= "ABCDEF";
	int arr[]= {10,20,30};
	%>
	
	<!-- 스크립트릿 -->
	<%
	out.println("i= "+i+"<br>");
	out.println("str="+str+"<br>");
	out.println(Arrays.toString(arr)+"<br><br>");
	%>
	
	<!-- include 지시자 활용 -->
	<h1>ch10_include.jsp 시작</h1>
	<%@include file="ch10_include.jsp" %>
	<h1>ch10_include.jsp 시작</h1><br>
	
	<!-- 표현식 -->
	<%=i %><br>
	<%=str %><br>
	<%=Arrays.toString(arr) %><br>
	
	
	
	
</body>
</html>