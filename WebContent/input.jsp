<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자주문</title>
</head>
<body>
	<form action="basket.jsp" method="post">
		<table border="2">
			<thead>
				<tr>
					<th>피자선택</th>
					<th>토핑선택</th>
					<th>최종주문</th>				
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<img src="images/combi.JPG" width="100" height="80" /><br>
						콤비네이션피자 <input type="radio" name="name" value="콤비네이션"><br>
						<img src="images/bulgogi.JPG" width="100" height="80" /><br>
						불고기피자 <input type="radio" name="name" value="불고기"><br>
						<img src="iamges/pproni.JPG" width="100" height="80" /><br>						
						페페로니피자 <input type="radio" name="name" value="페페로니"><br>
					</td>
					<td>
						치즈크러스트 <input type="checkbox" name="topping" value="치즈크러스트"><br>
						고구마바이트 <input type="checkbox" name="topping" value="고구마바이트"><br>
						페페로니 <input type="checkbox" name="topping" value="페페로니"><br>
						치즈 추가 <input type="checkbox" name="topping" value="치즈"><br>
						올리브 추가 <input type="checkbox" name="topping" value="올리브"><br>
					</td>
					<td>
						구매개수
						<select name="sum"> 
							<option value="1">1개</option>
							<option value="2">2개</option>
							<option value="3">3개</option>
							<option value="4">4개</option>
						</select>
						<br>
						<br>
						<br>
						<button>장바구니에 넣기</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>