<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 
	요청에 대한 흐름제어
	1. include (디자인 적인 요소에서 많이)
	2. forward (실제 흐름제어에서 요청에 따른 다른 페이지를 서비스할 때)
	
	공통점 : request 객체를 공유한다!
	
	차이점 : include는 제어권을 가지고 있지만,
		   forward는 제어권을 넘겨준다.	 (Point : 요청 주소는 동일한데, 서비스의 내용을 다르게 할 수 있다.)
*/

	String code = request.getParameter("code");
	String viewUri = null;
	if(code.equals("A")){
		viewUri = "/forward/A.jsp";
	} else if(code.equals("B")){
		viewUri = "/forward/B.jsp";
	} else if(code.equals("C")){
		viewUri = "/forward/C.jsp";
	}
%>
<jsp:forward page="<%=viewUri %>"/>
<!-- 의미가 없다. forward페이지는 디자인이 없다. -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	ㅁㄴㅇㅇㅇㅇㅇㅇㅇㅇㅇ
	asjfbvlskdnblsjkdfnbkjdn
</body>
</html>