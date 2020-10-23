package com.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/FrontBoardController")
public class FrontBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontBoardController() {
        super();
    }

    // GET, POST 두 가지 요청에 대해서 동작하는 함수
    // doGet, doPost 자동 호출
    // 이거 말고도 개발자가 별도의 함수를 만들 수 있다.
    // 1.별도의 사용자 함수를 만들어서 사용 : doProcess
	
    // 파라미터를 하나 더 주면, 어떤 방식으로 넘어오는지 알 수 있다.
    private void doProcess(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
    	// doGet이나 doPost로 오는 요청은 doProcess가 다 처리하겠다는 의미.
    	System.out.println("클라이언트 요청 함수 : " + method);
    	
    	// 순서
    	// 1.한글처리
    	
    	// 2.요청받기 (request)
    	// 3.요청판단 (판단의 기준? 1.parameter 기준 << 'command방식') >> 즉, 종류에 따른 서비스를 만든다

    	// COMMAND 방식 ----- 요청판단 패턴1
    	// 3.1 parameter 기준으로 판단한다.
    	// 단점은, 요청이 올때마다 항상 파라미터 값을 만들어줘야 한다. -> 무엇을 할 것인지 파라미터를 만들어줘서 넘겨주어야한다.
    	// 3.2 http://192.168.0.92:8090/WebServlet_1/board?cmd=login&id=kglim&pwwd=1004 > 아 로그인하려고 하는구나
    	// 3.2 http://192.168.0.92:8090/WebServlet_1/board?cmd=list > 아 (규칙을 정해야함) 게시판을 보여주는 거구나
    	
    	//String command = request.getParameter("cmd");
    	//if(command.equals("login")) { 로그인처리서비스를 하겠다 }
    	//else if(command.equals("list")) { 게시판목록 보기를 원하는구나 }
    	
    	// URL 주소 방식 ---- COMMAND 방식과 함께 쓰이는 방식 요청판단 패턴2 -- 보다 더 많은 빈도로 사용된다.
    	// http://192.168.0.92:8090/WebServlet_1/board/boardlist
    	// http://192.168.0.92:8090/WebServlet_1/board/boardwrite?title=아무개&content=방가방가
    	// 마지막 주소값을 추출 : /boardlist	추출한 문자열값이 == >> 게시판 목록보기
    	//					/boardwrite 추출한 문자열값이 == >> 게시판 글쓰기
    	
    	// 4. 결과 저장 (request, session, application)
    	// session 객체에 저장한다는 판단 : 사용자 id등을 session객체에 저장해 홈페이지마다마다 쓰인다.
    	
    	// 5. View 지정 -> RequestDispatcher
    	// View Page를 지정 : jsp
    	// WebContent > board > boardlist.jsp
    	// WebContent > error > error404.jsp
    	// 위의 코드는 보안성의 문제가 있다! >> WebContent 아래에 있는 자원은 클라이언트가 직접 요청할 수 있는 자원들이다.
    	// 하지만 직접 요청을 해서는 안되는 부분이 대부분이다!
    	// >>>> 실질적으로 해결방안은, 두구두구... 감추는 것이다? > 보안 폴더를 사용하는 것이다. >> WEB-INF 폴더는 보안폴더!
    	// 현업에서는.. : WEB-INF >> views >> board >> boardlist.jsp 이런식으로 한다.
    	// WEB-INF 는 클라이언트는 접근이 안되고, WAS 내부에서는 서로 접근이 가능하다 ::::::: FORWARD 방식으로 접근이 가능 ( 서버 코드를 READ해서 출력)
    	
    	// 6. view에게 저장된 객체를 전달 (forward)!
    	// forward(r, r)== 현재 페이지가 가지고 있는 request 객체와 response객체를 forward 방식으로 전달해준다.
    	
    	
    	// 한글처리
    	request.setCharacterEncoding("UTF-8");
    	
    	// 1.요청 받기 : 약속이 있어야 한다. - 커맨드 방식
    	// http://192.168.0.169:8090/WebServlet_1/board?cmd=뵨
    	String cmd = request.getParameter("cmd");
    	
    	// 2.받은 요청을 판단 ( 업무에 대한 정의 또는 서비스를 만든다 )
    	String viewpage = null;
    	// cmd >> null 안들어올 경우 >> error.jsp
    	// cmd >> boardlist >> list.jsp
    	// cmd >> boardwrite >> write.jsp 이런 식으로 약속을 해야 한다.
    	if(cmd==null) {
    		viewpage = "/error/error.jsp";	// cmd가 null일 경우 error 페이지를 서비스하겠다.
    	} else if (cmd.equals("boardlist")) {
    		// 실제 비즈니스 로직을 짠다.
    		// DB 연결하고 > select 하고 > 그걸 객체에 담고 > 저장하고... 등
    		// Ex)boardDAO를 따로 만들어서 DB작업할 수 있는 클래스를
    		// new BoardDAO 하고,
    		// List<board> boardlist = dao.selectBoardList();
    		// request.setAttribute("list", boardlist);
    		// forward >> view에게 전달 >> view가 받아서 화면 출력
    		// 화면 출력 : EL & JSTL 언어를 사용해서 화면에 출려가는 것까지가 우리가 할 것
    		
    		// <c:set var="list" value="<%=......    << JSTL도 배울 거에용~
    		viewpage = "/board/boardlist.jsp";	// cmd가 boardlist일 경우 이 페이지를 서비스하겠다.
    	} else if (cmd.equals("boardwrite")) {
    		viewpage = "/board/boardwrite.jsp"; // cmd가 boardwrite일 경우 이 페이지를 서비스 하겠다.
    	} else if (cmd.equals("login")){		// 실제 개발에서는 jsp폴더를 보안폴더 안에다가 만듭니다.
    											// 왜냐하면, 클라이언트가 직접적으로 jsp파일을 만나면 안되는 상황이라면...
    		viewpage = "/WEB-INF/views/login/login.jsp";	// 실개발에서 사용하는 방식
    	} else {	// 그밖에 나머지는 에러로 봅시다.
    		viewpage="/error/error.jsp";
    	}
    	
    	// 3.뷰페이지를 정했으면, 뷰 페이지에 뿌려질 정보를 저장
    	// EX) List<Emp> list = new ArrayList<Emp>();
    	// list.add(new Emp(200, "김유신"));
    	// request.setAttribute("emplist", list);
    	
    	// 4. View를 지정하는 방법 : Dispatcher
    	RequestDispatcher dis = request.getRequestDispatcher(viewpage);
    	
    	// 5.정보를 request객체에 담아 forward로 전달
    	dis.forward(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "GET");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "POST");
	}

}
