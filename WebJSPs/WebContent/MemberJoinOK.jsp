<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
/*
	받아와야할 정보		네임
	------------------------------
	아이디			userId
	이름				userName
	패스워드			userPass
	패스워드 확인		userPassCheck
	성별				gender
	이메일			userEmail
	주민 앞			userSsn1
	주민 뒤			userSsn2
	우편번호			userZipCode
	주소1				userAddr1
	주소2				userAddr2
	폰				userPhone
	취미**			hobby
	생년월일 (은 받지말아보자)
	** : 배열일듯
*/
	String id = request.getParameter("userId");					// 사용자id
	String name = request.getParameter("userName");				// 사용자이름
	String pwd = request.getParameter("userPass");				// 비밀번호
	String pwdcheck = request.getParameter("userPassCheck");	// 비밀번호 확인
	String gender = request.getParameter("gender");				// 성별
	String email = request.getParameter("userEmail");			// 이메일
	String ssn1 = request.getParameter("userSsn1");				// 주민번호 앞자리
	String ssn2 = request.getParameter("userSsn2");				// 주민번호 뒷자리
	String zipcode = request.getParameter("userZipCode");		// 우편번호
	String addr = request.getParameter("userAddr1");			// 주소
	String addr2 = request.getParameter("userAddr2");			// 상세주소 (입력값)
	String phone = request.getParameter("userPhone");			// 핸드폰 번호 (010제외)
	String[] hobbies = request.getParameterValues("hobby");		// 취미
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	사용자id : <%=id %><br>
	사용자이름 : <%=name %><br>
	비밀번호 : <%=pwd %><br>
	비밀번호 확인 : <%=pwdcheck %><br>
	성별 : <%=gender %><br>
	이메일 : <%=email %><br>
	주민번호 앞자리 :<%=ssn1 %><br>
	주민번호 뒷자리 : <%=ssn2 %><br>
	우편번호 : <%=zipcode %><br>
	주소 : <%=addr %><br>
	상세주소 (입력값) : <%=addr2 %><br>
	<hr>
	핸드폰 번호 (010제외) : <%=phone %><br>
	취미 : <% 
	if(hobbies!=null) {
		for(String hobby : hobbies){
	 		out.print(hobby + "&nbsp;&nbsp;&nbsp;");
		}
	}else
		out.print("취미를 선택하지 않으셨습니다.");
	%>
</body>
</html>