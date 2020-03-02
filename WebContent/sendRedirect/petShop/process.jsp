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
	String dogName = request.getParameter("dogName");
	String dogGender = request.getParameter("dogGender");
	String kind = request.getParameter("kind");
	//혹시 한국어 안쳐지면 url인코더로 해주기	
	//String URLName = URLEncoder.encode(name, "utf-8");
	
	response.sendRedirect(kind+".jsp"+"?dogName="+dogName+"&dogGender="+dogGender);
	//객체.메소드("경로") --> 소괄호의 경로로 이동한다
%>
</body>
</html>