<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// localhost:8090/WebClient_Javascript/WebContent/Ex08_login.jsp?txtuserid=hspaek&txtpwd=1004로 넘어올꺼야
	// 서버로 받자
	String id = request.getParameter("txtuserid");	//hspaek
	String pwd = request.getParameter("txtpwd");	//1004
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버 전송 완료, DB 확인 완료<hr>
	입력한 아이디 : <%=id %><br>
	입력한 비밀번호 : <%=pwd %> 
</body>
</html>