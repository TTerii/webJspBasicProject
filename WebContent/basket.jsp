<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pizza.Pizza"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String topping[] = request.getParameterValues("topping");
	int sum = Integer.parseInt(request.getParameter("sum")); //request사용해 input의 데이터 받아옴
	
	Pizza piz = new Pizza(name, topping, sum); //데이터들을  Pizza 객체에 묶어서 저장

	Integer basketNo = (Integer)session.getAttribute("basNo"); //session안에 basNo객체 선언
	//null 사용 위해 Integer로 선언한다.(int선언 시 쓰레기값을 알 수 없어 첫순번지정이 어려움)
	//객체로도 cast할 수 있다
	if(basketNo == null){
		basketNo = 0;
	}
	
	session.setAttribute("pizNo" + basketNo, piz);
	session.setAttribute("basNo", ++basketNo); 
	//받아온 데이터들을 묶어서 session에 담을 때 마다 basketNo의 증감연산자 실행
	//객체에 증감연산자 사용가능
	//session.setAttribute("저장할 객체를 저장할 이름", 저장할 객체);
%>
장바구니에 넣었습니다.
<button onclick="location.href='input.jsp'">메뉴판으로</button><br>
장바구니 목록 <br>
<table border="2px" width="1000px">
   <tr>
      <th>장바구니 번호</th><th>메뉴 이름</th><th>추가되는 토핑</th><th>개수</th>
   </tr>
   <tr>
      <td>
		<% 
			for(int i=1; i<=basketNo; i++){
				out.println(i + "<br>");
			}
		%>
      </td>
      <td>
     	<% 
     		Pizza pizzaList;
			for(int i=0; i<basketNo; i++){
				pizzaList = (Pizza)session.getAttribute("pizNo" + i); 
				out.println(pizzaList.getName() + "<br>");
			}
     	%>
      </td>
      <td>
        <% 
			String [] toppingList; //배열크기 지정없이 배열선언 가능?
        	for(int i=0; i<basketNo; i++){
        		pizzaList = (Pizza)session.getAttribute("pizNo" + i); 
        		//toppingList는 String 배열이기때문에 세션에 저장된 객체값가져오기 위해 한번 더씀
        		toppingList = pizzaList.getTopping(); //getTopping에 배열이 저장되는 방식?
        		for(String top:toppingList){
        			out.print(top+" ");
        		}
        		out.print("<br>");
        	}
     	%>       
      </td>
      <td>
     	<% 
	 		Pizza pizzaSum;
			for(int i=0; i<basketNo; i++){
				pizzaSum = (Pizza)session.getAttribute("pizNo" + i); 
				out.println(pizzaSum.getSum() + "<br>");
			}
     	%> 
      </td>
   </tr>
</table>

</body>
</html>