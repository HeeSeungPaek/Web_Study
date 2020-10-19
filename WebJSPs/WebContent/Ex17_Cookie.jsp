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
	정보 (데이터) > 어디엔가는 저장해야한다.
	그런데 웹에서는 저장할수 있는 공간이 두가지이다.
	1. 클라이언트 (개인이 가지고 있는 로컬 PC에 저장)
	2. 웹 서버      (네이버, 다음, 톰캣, DB서버 등)
	
	정보 (데이터)를 어디에 저장할까?
	기준 : 보안(정보의 중요성) 과 소멸(일시적이냐 영속적이냐)
	
	Client (Local PC : 웹 브라우져) 측에 저장하는 정보
	1.Cookie (메모리쿠키(임시적))
			 (파일쿠키(Local에 txt파일로 자동암호화해서 저장됨)) : 소멸시기가 있음
	2.Local Storage (Map형태 (key : value))							// 팝업창 등 일회성으로 보여주고 소멸되는 것들에 쓴다.
	___________________________________
	Server (WebServeer : Apache Tomcat) 측에 저장하는 정보
	1. server의 메모리 : Session 객체 (접속한 사용자의 식별값을 저장하고, 개인정보 등을 저장한다) >> 서버가 리부팅되거나 하면 소멸된다.	
	2. server의 메모리 : Application 객체 (접속한 사용자의 공유자원) >> 서버가 리부팅되거나 하면 소멸된다.
	3. server의 영속적 메모리 : login.txt >> 관리가 힘들다.
	4. 결국 server에 영속적으로 데이터를 저장한다는 것은 보안적,관리적,영속적 요소가 포함되어 있는 "DB서버"에 저장한다.
 -->
 <%
 	Cookie mycookie = new Cookie("cname", "1004");
 	//생성
 	
 	//Client 브라우저 전달 >> response
 	response.addCookie(mycookie);
 %>
<a href="Ex17_Cookie_Read.jsp">Cookie Read</a>
</body>
</html>