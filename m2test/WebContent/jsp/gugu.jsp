<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp방식 구구단</h1>
	<div>안녕하세요</div>
	<div>집에서 수정</div>
	<%
	//http://localhost:8085/m2test/jsp/gugu.jsp?dan=2
		int dan = Integer.parseInt(request.getParameter("dan")); 
	//Integer class안에 staticmethod parseInt
	//ref type
	//request.
	
		System.out.println(dan+"<--dan");
	
		for(int i=1; i<10; i++){
	%>
		<div><%=dan %>*<%=i %></div>
	<%
		}
	%>
</body>
</html>