<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h3>request 객체(Ex14_include_Main.jsp) >> include 페이지에서도 공유된다.</h3>
	<hr>
	<%=request.getParameter("type") %><br>
	<%=request.getParameter("userid") %><br>
	<hr>
	<h3>main페이지에서 param 액션태그로 전달된 값</h3>
	<%
		String hobby = request.getParameter("hobby");
		String pwd = request.getParameter("pwd");
		out.print("비번 : " + pwd + "<br>");
		out.print("<i>당신의 취미는" + hobby +"입니다.</i>");
	%>
</body>
</html>