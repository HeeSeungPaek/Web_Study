<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//java코드를 사용할 수 있다.
	//현재 Ex15_login.jsp는 목적지 주소 페이지
	//클라이언트가 [입력한 정보]를 여기서 받는다.
	//<input type="text" name="id">
	//<input type="password" name="pwd">
	//name속성으로 값을 구분한다.
	
	String userid = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>당신이 입력한 데이터</h3>
	ID : <%=userid %><br>
	PWD : <%=pwd %><br>
</body>
</html>