<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	Session 객체 : 접속한 사용자(브라우저, Client) 마다 서버에서 부여하는 고유한 객체
	
	Session 값 : 웹 서버가 접속한 클라이언트(부여하는 고유한) 식별값(id값)
	
	A라는 사용자가 Web Server에 접속을 했다. 그 때 Session 객체가 하나 만들어진다.
	그리고 Session 객체를 식별할 수 있는 고유한 ID값을 부여하며, 그 ID값을 클라이언트에게 response한다.
	그 Response된 id값은 쿠키로 관리된다. 
	JSESSIONID : 45E6F131E7A25674D3CB9B0B7AB9E541
	
	접속한 사용자의 고유한 객체 : Session 객체
	활용
	1. 로그인 ID 정보, 쇼핑몰 구매한 물건 정보, 접속 시간 등... 개인 별 정보를 담는다!.
 -->
<%
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
%>
<h2>세션 정보</h2>
session 객체의 식별값 : <%=session.getId() %><br>
<hr>

<%
	date.setTime(session.getCreationTime());
%>
[session이 생성된 시간] : <%= formatter.format(date) %>

<hr>

<%
	date.setTime(session.getLastAccessedTime());
%>
[session 마지막 접속시간(client)] : <%=formatter.format(date) %>

</body>
</html>