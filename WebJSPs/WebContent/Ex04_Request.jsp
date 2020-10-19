<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 한글 처리부터 (페이지 상단에)
	request.setCharacterEncoding("UTF-8");

	//2. 클라이언트가 서버로 요청한 데이터를 받기
	String id = request.getParameter("id");
	/* 
	WAS(아팟톰)가 내장하고 있는 객체 : request
	[JSP 파일은 Default로 내장 객체 사용 가능(new하지 않아도)]
	
	request 객체 (=요청)
	1. 요청 페이지 당 한 개의 request 객체가 생성된다.
	2. 클라이언트의 정보를 가지고 있다.(IP, 입력값, IP, Header...) > request가 가지고 있다.
	
	request 내장 객체는 
	클라이언트에서 서버로 요청될 때 생성되는 
	HttpServletRequest 타입을 갖는 객체가 	자동으로 생성되고, 그 주소를 request가 참조한다.
	HttpServletRequest request = new HttpServletRequest();를 직접 하지 않아도 자동으로...
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ID:<%=id %><br>
	접속한 클라이언트의 IP : <%=request.getRemoteAddr()%> : 이 친구 많이씀<br>
	서버(클라이언트가 요청한 방식, 인코드정보) : <%=request.getCharacterEncoding() %><br>
	전송 방식 : <%=request.getMethod() %><br>
	포트 : <%=request.getServerPort() %><br>
	Context(;사이트 전체:) root(;홈 디렉토리, 가상 디렉토리, 웹 경로) :<%=request.getContextPath() %><br>
	<!-- 
		실제 웹 경로의 전체
		http://192.168.0.92:8090/WebJSP/Ex04_Request.jsp
		request.getContextPath()
		
		: 가상 경로(웹 경로, Context root) : /WebJSP
		실제 경로 > C:\eclipse-WebWorkspace\WebJSP\WebContent\Ex04_Request.jsp
		
		/WebJSP 가상 디렉토리의 서비스 경로 : C:\eclipse-WebWorkspace\WebJSP\WebContent
		
		이제 게시판같은데서 파일 업로드같은거 할 때 >> 가상(웹)경로를 통해서 실제경로를 반환받을 수 있다.
	 -->
	 <hr>
	 <%=request.getRequestURI() %> <!-- /WebJSP/Ex04_Request.jsp --><br>
	 <%=request.getRequestURL() %>
</body>
</html>