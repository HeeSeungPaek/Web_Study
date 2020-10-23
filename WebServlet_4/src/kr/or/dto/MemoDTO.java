package kr.or.dto;

// DTO란
// Data Transfer Object로, 일반적으로
// 실제 DB의 테이블 컬럼 정보와 DTO클래스의 멤버 정보는
// 1:1 대응구조이다. (매핑구조)
// EX) DB emp테이블(empno, ename, sal) == int empno, String ename, int sal...
//		emp 테이블의 데이터를 DTO클래스에 담을 수 있다.

// 현재 DB에 있는 MEMO table : id varchar2/ email varchar2/ content varchar2

public class MemoDTO {	// 이리하여 DB 테이블 정보와 1:1 매핑구조로 만들어 놓는다.
	private String id;
	private String email;
	private String content;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "MemoDTO [id=" + id + ", email=" + email + ", content=" + content + "]";
	}
	
}
