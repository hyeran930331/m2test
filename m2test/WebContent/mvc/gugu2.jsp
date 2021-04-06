<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//http://localhost:8085/m2test/mvc/gugu2?dan=2
	// 그대로 넘겨받기
	ArrayList<String> list = (ArrayList<String>)(request.getAttribute("list"));
	//3. 출력
		for (String s : list){
	%>
			<div><%=s %></div>;
	<%
		}
	%>
</body>
</html>