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
	클라이언트 브라우저가 가지고 있는 Cookie 정보를 가지고와서 
	read
 -->
 
 <%
 	Cookie[] cs = request.getCookies();
 	if(cs != null || cs.length > 0){
 		for(Cookie c : cs){
 			out.print(c.getName()+"<br>");
 			out.print(c.getValue()+"<br>");		
 			out.print(c.getMaxAge()+"<br>");	//쿠키 소멸시간 -1 : 메모리 쿠키 : 소멸시간이 없다.== 브라우저를 끄면 같이 사라진다.
 			//out.print(c.getDomain()+"<br>");	//영역
 			out.print("<hr>");
 		}
 	}
 %>
</body>
</html>