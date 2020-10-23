package com.bit;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(description = "여기는 설명을 하는 곳입니다.", 
			urlPatterns = { "/action.do" })	// action.do라는 요청에 의해서 컴파일되고 실행되는 servlet
public class FrontServletController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public FrontServletController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET");
		// http://...../WebServlet_1/action.do?cmd=greeting
		
		request.setCharacterEncoding("UTF-8");	// ㅎㄱㅊㄹ
		
		String cmd = request.getParameter("cmd"); // 요청 받기
		
		String msg = "";
		if(cmd.equals("greeting")) { // 요청 판단하고 로직 정의
			// 다른 자바 객체를 참조할 수 있다.
			Message m = new Message();
			msg = m.getMessage(cmd);
		}
		
		request.setAttribute("msg", msg); // 결과 담기
		
		RequestDispatcher dis = request.getRequestDispatcher("/greeting.jsp"); // 뷰지정
		
		dis.forward(request, response); // 포워드
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
