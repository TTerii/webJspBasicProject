<%@page import="java.net.*" %>
<!-- *대신 URLEncoder써도됨 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 뭐라고 쳐도 response가 있기때문에 창에는 안보임
주소창 =get방식 -->
<%
	int a = 20000;
	int b = 28;
	int total = a+b;
	String name = "다현";
	String URLName = URLEncoder.encode(name, "utf-8");
%>

<%
	response.sendRedirect("end.jsp?total="+total+"&name="+URLName);
	//response.sendRedirect("경로url")
%>
</body>
</html>