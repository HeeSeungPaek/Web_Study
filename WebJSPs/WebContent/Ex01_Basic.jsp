<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Declare부 ; 선언부, 지시부, 지시자 -->

<%
		/* 
			JSP페이지 : UI (html + css + javascript) + Java(로직, DB연동:JDBC)
			JAVA코드 (<%안쪽에 구현)
			
			JSP페이지는 [디자인 코드] + [서버 로직 코드]가 혼재된 방식이다. >> 유지보수하기 어렵다!(디자인,로직이 섞여있기 때문에..)
			혹자들은 JSP를 스파게티 코드라고 한다.ㅋㅋ
			
			그렇다면 장점은 무엇일까?
			- 단순한 웹페이지를 작성하거나 또는 학습하기 편하다.
			
			JSP의 구성요소
			1. 선언부가 존재한다 => JSP 페이지에 대한 기본 설정 세팅
				page 지시자 : 사용언어, 인코딩, import... 지시자를 통해 만든다.
			2. 스크립트 요소
			2.1 스크립트 릿 <% ..java code구현 영역
			2.2 표현식 (출력방법) : 출력대상(클라이언트의 웹브라우저에게 전달) : <%= (response)
			2.2 선언부 (공통적인 자원 (page scope를 가지는 공통자원)) : 공통함수를 만든다면 : <%! ..공통java코드..거의 안쓴다.
			
			JSP와 HTML의 차이점은 무엇일까?
			1. 처리 방법 : 
				1.1 JSP = WAS가 처리	:: 해석주체-WAS가 컴파일, jsp.java->jsp.class->변환(text,html,script)->응답
					정적인 자원 + 동적인 자원(java) >> 정적 자원을 만들어서 서비스
					<% 안의 코드가 수정되면 다시 컴파일
				1.2 HTML = Web Server가 요청에 대한 응답을 처리	 ::해석주체-웹 브라우저
			
			>> [결론]
			Web을 MVC라는 패턴을 통한 웹 개발을 해야하는 것이 최종 목표이다.
			소위 말하는 
			>> 일반 java파일(Pojo) / => [Model] in MVC
			>> JSP 파일 / => [View] in MVC
			>> Servlet 파일 / => [Controller] in MVC
			세 종류의 파일들이 MVC 패턴에 녹아들 것이다. >> 목적 : 분업화 (잘 하는 것만 하자)
			
			M : Model == (DTO:데이터를 담을수 있는 클래스, DAO:DB작업을 하는 클래스 역할)
			V : View == (화면을 구성하는 작업 : Server측 코드를 받아서)
			C : Controller == (조정자 : 요청의 흐름을 제어 => 클라이언트의 요청을 처리하는 역할)
			
			중간 프로젝트 : Model2 기반의 MVC패턴을 사용하는 Web프로젝트
		*/
		Date day = new Date();
	%>
	<%!
		// 이 페이지 내에서 공통의 함수로 사용된다면, %!안에 만들어서 쓰자
		public int add(int i, int j){
			return i+j;
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hello World<br>
	<%=day %><br>
	<%
		int result = add(100, 200);
	%>
	<hr>
	함수 호출결과 :<%=result %> 
</body>
</html>