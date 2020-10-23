package com;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
web.xml 설정
	<url-pattern>/simple</url-pattern>
	localhost:8090/WebServlet_1/simple 을 요청하면,
	public class SimpleController 를 컴파일해서 실행하겠다.
	
	서블릿 (Servlet)
	: JAVA로 만든 파일로, 웹 서비스를 목적으로 합니다.
	서블릿의 조건 : HttpServlet을 상속해야 한다. >> extends HttpServlet >> 웹에서 사용되는 요청객체(request)와 응답객체(response)를 사용할 수 있게 해야한다.
	
	실제로 서블릿파일은 URL주소에서 바로 요청이 안되기 떄문에(자바파일이기 때문에) 무엇인가를 통해서 요청을 Mapping하는 것이 필요하다.
	mapping : 요청 주소를 생성해야 한다
	그게 바로 >> @WebServlet("/SumpleController")
	
	1. extends HttpServlet은 반드시 상속되어야 한다.
	2. SimpleController는 서블릿 파일이다. (HttpServlet을 상속하고 있기 때문에)
	3. 서블릿 파일은 이벤트 기반의 동작을 한다. (특정 사건이 발생하면 자동으로 호출되는 함수가 있다.)
		Ex) 페이지가 로드가 되면... 자동으로 호출되는 함수가 여러개가 있다.
		그 함수 > protected void doGet(),
			 > protected void doPost()
		2개의 함수 중에서 한 함수가 자동으로 호출된다. (실제로는 2개가 아니라 더 있지만..)
		
		클라이언트가 서버 주소창에 localhost:8090/WebServlet_1/SimpleController
		요청방식 (GET) 
		>> <form method="GET"> or <a href="login.jsp?num=1000>게시판</a>
		>> GET방식으로 요청시 자동으로 protected void doGet() 호출
		
		요청방식 (POST)
		>> <form method="POST">
		>> POST방식으로 요청시 자동으로 protected void doPost() 호출
		
	Servlet파일은 doGet이 아니면 doPost를 호출한다 : >> 데이터 받기 : request 활용
	요청에 의해 생성된 request 객체의 주소를 parameter로 받아서 처리
	HttpServletRequest request
*/

// @WebServlet("/SimpleController")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SimpleController() {
        super();
        System.out.println("SimpleController 생성자 호출...");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("클라이언트의 요청이 들어왔습니다.");
		// 제일먼저 1.한글처리
		// 2. 사용자의 데이터 받기 -> (요청의 의도를 파악한다)
		String type = request.getParameter("type");
		
		// 3. 요청에 따른 업무를 수행한다. = service
		Object resultobj = null;
		if(type == null || type.equals("greeting")) {
			resultobj = "hello world";
		} else if(type.equals("date")) {
			resultobj = new Date();
		} else {
			resultobj = "invalid String type";
		}

		// 4. 요청 완료에 따른 결과를 저장해야 한다.
		// 결과를 저장하는 방법 : request 객체, session 객체, application 객체에 저장하는 법 (각 scope의 차이)
		request.setAttribute("result", resultobj);
		
		// 5.달달 외워라. 저장한 결과를 Client에게 전달 (화면 UI에 뿌리는 JSP를 통해서 전달) >> 어떤 JSP를 사용할까 지정
		// >> 결과를 출력할 페이지를 지정 >> 출력할 결과를 넘겨줌 >> include방식 X / forward를 사용한다.***** >> 제어권을 넘겨준다.
		// request객체는 결국 include, forward 페이지에서 공유할 수 있다.
		RequestDispatcher dis = request.getRequestDispatcher("/simpleview.jsp"); // getRequestDispatcher : 출력할 페이지를 지정하세요 : 어떤 화면을 쓸건지 지정해
		
		// 페이지에 forward하는 것 (request, response)
		dis.forward(request, response);	// 현재 페이지가 가지고 있는 request 객체와 response객체를 forward 방식으로 전달해준다.
		System.out.println("");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
