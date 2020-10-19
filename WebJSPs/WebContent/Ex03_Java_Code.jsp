<%@page import="kr.or.bit.Emp"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Emp e = new Emp();
	e.setEmpno(1000);
	e.setEname("홍길동");
	
	// Calendar 객체 생성하고
	// 화면에 뿌려보아라.
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int day = cal.get(Calendar.DATE);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	출력(표현식을 사용하자)<br>
	Empno :::: <%=e.getEmpno() %><br>
	Ename :::: <%=e.getEname() %><br>
	toString() <%=e.toString() %><hr>
	현재 : <%=year%>년 <%=month%>월 <%=day%>일
	
</body>
</html>