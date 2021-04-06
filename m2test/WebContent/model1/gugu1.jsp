<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="m1.mode.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//m1.요청분석 , 전처리
	int dan = Integer.parseInt(request.getParameter("dan")); 
	
	//v2.요청처리
	GuGuService guguservice = new GuGuService();
	ArrayList<String> list = guguservice.getGuguDan(dan); //처리결과 = 모델
	%>
	
	<%
	//c3. 출력
		for (String s : list){
	%>
			System.out.print(<%=s %>);
	<%
		}
	%>
</body>
</html>