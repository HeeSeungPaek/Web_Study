package kr.or.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import kr.or.dto.MemoDTO;

// DAO란
// Data Access Object의 줄임말로,
// 현재 클래스로 DB와 연결하여 DB에서 작동하는 CRUD를 직접 자바언어로 작성하는 클래스이다.

// MemoDTO는 실제 DB에 있는 Memo table의 정보를 담는 클래스인데,
// MemoDTO = 정보가 담겨있는 클래스를 DAO로 가져와
// 실 DB에서 작성하는 쿼리문에 대한 로직을 작성한다.
// 대표적인 쿼리문들을 함수로 작성한다.

public class MemoDAO {

	// 1. Select 		(전체 조회)
	// 2. Select where 	(조건 조회)
	// 3. insert		(정보 삽입)
	// 4. update		(정보 수정)
	// 5. delete		(정보 삭제)
	
	// 1. Select 		(전체 조회)
	public List<MemoDTO> getMemoAllList() {
		// 정보를 담고 있는 MemoDTO클래스리스트
		List<MemoDTO> memoList = new ArrayList<MemoDTO>();	// 클래스 정보는 add
		
		// JDBC 연결 시 필요한 연결 인터페이스 Connection, 
		// sql문의 명령 인터페이스 PreparedStatement (or Statement : 차이-명령문을 먼저,나중에 / 파라미터? 여부)
		// 명령 객체로 반환되어 DB & JAVA 연결 기반에서 Table 정보를 읽어오는 인터페이
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			// 1. JDBC Driver 정보 로드
			//Class.forName("oracle.jdbc.OracleDriver"); //과거에 필요했으나, JDK 8부터 필요가 없어졋다.
			System.out.println("오라클 드라이버 로딩 완료");
			
			// 2. DB와 연결
			// DriverManager객체를 통해 getConnection함수로  Connection구현한 객체의 주소값을 리턴
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bituser","1004");
			System.out.println(conn.isClosed() + " : 정상 (False)"); //연결 되었다면 false
			
			// 3. 명령문 생성 (작업할 내용의 쿼리)
			String query = "select * from memo";
			pst = conn.prepareStatement(query);
			// 만약 Statement인터페이스를 사용한다면 ?파라미터 사용x,
			// conn.createStatement(); 함수로 Statement 인스턴스에 할당을 먼저 한다.
			rs = pst.executeQuery();	// Statement였다면 여기서 excuteQuery(query);
			
			// MultiRow Selection
			while(rs.next()) {
				MemoDTO memo = new MemoDTO();	// 객체 정보를 담는 DTO클래스를 생성하고,
				memo.setId(rs.getString("id"));
				memo.setEmail(rs.getString("email"));
				memo.setContent(rs.getString("content"));	
				
				// DTO 객체에 DB로부터 받아온 값을 Set하고 List에 저장한다.
				memoList.add(memo);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {	// IO떄 배웟던 것처럼 자원 해제
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return memoList;
	}
	
	// 2. Select where	(조건 조회) = ID로 데이터 검색하기.
	public MemoDTO getMemoListById(String id) {
		MemoDTO memo = new MemoDTO();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			// 1. Driver 연결 (생략 가능) -- 생략
			// 2. DB connection
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bituser","1004");
			
			// 3. 작업할 명령문 생성
			// Statement 인터페이스의 경우를 보고 있습니다.
			stmt = conn.createStatement();	//Statement 객체는 그냥 사용해봄
			
			String query = "select * from memo where id='" + id + "'";	// 불편하다.
			rs = stmt.executeQuery(query);	//Statement 사용
			
			// 검색결과 조회 처리
			while(rs.next()) {	// 검색한 객체가 있다면, rs.next():true > memo에 저장
				memo = new MemoDTO();
				memo.setId(rs.getString("id"));
				memo.setEmail(rs.getString("email"));
				memo.setContent(rs.getString("content"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				System.out.println("자원 해제 중 문제 발생");
				e.printStackTrace();
			}
		}
		return memo;
	}
	
	// 3. insert		(정보 삽입)	..진행중
	public int insertMemo(MemoDTO memo) {	// return int >> insert 시 삽입 된 "행"이 반환 된다!
		Connection conn = null;
		PreparedStatement pstmt=null;
		int rowcount = 0;
		
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bituser","1004");
		} catch(Exception e) {
			
		} finally {
			
		}
		return rowcount;
	}
}




















