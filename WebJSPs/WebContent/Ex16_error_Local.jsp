<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/commonerror.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	페이지마다 고유하게 page errorPage="" 설정 페이지 제공이 가능하다.
	
	개발 시에는 쓰지 않고,
	최종 배포할 때 설정하는게 좋습니다.
	
	모든 페이지마다 예외에 대한 대체페이지를 넣고 싶을 때는...>> 전역적으로 설정이 가능하다.
	web.xml >> 자동으로 모든 페이지에 설정이 들어간다.
 -->
<%
	String data = request.getParameter("name").toLowerCase(); 
%>
<%=data %>
</body>
</html>