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
	for(int j=1;j<32;j++){
		out.print(j+ " ");
		if(j%7==0) out.print("<br>");
	}

%>

</body>
</html>