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
	1. 메모리 쿠키(브라우저 쿠키 = 메모리 쿠키) : Client가 강제로 삭제하지 않는 한
							  브라우저를 닫기 전까지 유효 (소멸타임이 없다 : MaxAge = -1)
	2. 파일 쿠키 (소멸 시간 있음) : Client가 강제로 삭제하지 않는 한
							  정해진 시간까지 유효 (2020년12월25일)	
	setMaxage(60) >> 60초 동안..
	setMaxage(30*24*60*60) >> 일 * 시 * 분 * 초 동안 생존 (30일)
	setMaxage(16666) < X 가독성 없음.
-->
	<%
		Cookie cookie = new Cookie("bit", "hong");	//메모리쿠키
		cookie.setMaxAge(30*24*60*60);				//현재시간 기준 30일동안 유지해라 2020-11-14T05:10:28.487Z < 이시점부터 파일쿠키
		response.addCookie(cookie);
	%>
</body>
</html>