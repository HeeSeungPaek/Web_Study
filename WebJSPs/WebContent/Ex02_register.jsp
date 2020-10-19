<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	// 클라이언트가 전송한 데이터를 받기가 JSP의 1단계이다.
	// Tomcat이 Web 전용 객체를 제공한다. JSP에게. (request, response) < 내부적으로 new돼있어 바로 사용가능! :WAS 내장객체
	
	// request 요청객체 : 클라이언트로부터 넘어오는 정보를 담는 객체.
	// 넘어오는 정보는? >> 클라IP, 브라우저종류, 입력한 데이터
	
	// response 응답객체 : 서버가 클라이언트에게 전달하는 객체.
	String uid = request.getParameter("userid");	// HTML의 name을 받아온다.
	String pwd = request.getParameter("pwd");
	
	//다중값 ....
	String[] hobbys = request.getParameterValues("hobby");
	
	/*  
	한글처리 ...(GET) (Tomcat9 버전 (한글 출력))
	**Tomcat9 버전 이전
	1. 페이지 상단에 인코딩 : request.setCharacterEncoding("UTF-8");
	2. server.xml 63 라인 >> URIEncoding="UTF-8" 추가
	 <Connector URIEncoding="UTF-8" connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>

	한글처리 ...(POST)
	1.Tomcat 버전에 상관없이 ..
	2.받는 페이지 상단에 무조건 : request.setCharacterEncoding("UTF-8");

	JSP 페이지 상단에 무조건 ** (한글이 깨짐은 없다 ....)
	request.setCharacterEncoding("UTF-8"); 다써라
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	클라이언트에게 전달한다!<br>
	ID : <%=uid %><br>
	PWD: <%=pwd %><br>
	당신의 취미는 : <br>
	<%
		for(String str : hobbys){
	%>
	  	hobby : <%= str %><br>
	<%
	  	}
	%>
</body>
</html>