<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="2">
		<tr>
			<td colspan = "3">
				<jsp:include page ="logo.jsp"/> <!-- 같은폴더안에있음 -->
			</td>
		</tr>
		<tr>

			<td>
				<jsp:include page ="../menu.jsp"/> 
			</td>

			<td>
				<jsp:include page ="../contents/calender.jsp"/>
			</td>			

			<td>
				<jsp:include page ="../../include/main/sugang/sugang.jsp"/> 
				<!-- sugang.jsp 우클릭  copy Qualified -->
				<!-- 절대경로 == 파일위에 뜨는거 복사해오기 -->
			</td>
		</tr>	
	</table>



</body>
</html>