<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple view</title>
</head>
<body>
	<h3>SimpleController에서 forward된 page</h3>
	SimpleController에서 요청한 결과를 출력 <%= request.getAttribute("result") %>
</body>
</html>