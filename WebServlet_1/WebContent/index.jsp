<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet 요청하기</title>
</head>
<body>
	<h3>servlet 요청하기</h3>
	<h3>Context Path : <%=request.getContextPath()%></h3><br> 
	
	<a href="<%=request.getContextPath()%>/simple">일반 요청하기</a><br>
	<a href="<%=request.getContextPath()%>/simple?type=date">날짜 요청하기</a><br>
	<a href="<%=request.getContextPath()%>/simple?type=abcd">Invalid 비정상 요청하기</a><br>
	
	<hr>
	<h3>FrontBoardController 사용하기</h3>
	<a href="<%=request.getContextPath()%>/board?cmd=boardlist">게시판 목록</a><br>
	<a href="<%=request.getContextPath()%>/board?cmd=boardwrite">게시판 글쓰기</a><br>
	<a href="<%=request.getContextPath()%>/board">cmd null error 유도</a><br>
	<hr>
	<a href="<%=request.getContextPath()%>/board?cmd=boarddelete">게시판 삭제하기</a><br>
	<a href="<%=request.getContextPath()%>/board?cmd=login">보안 페이지 보여주기</a><br>
	
	<hr>
	<h3>FrontServletController</h3>
	<a href="<%=request.getContextPath()%>/action.do?cmd=greeting">요청 보내기</a><br>
</body>
</html>