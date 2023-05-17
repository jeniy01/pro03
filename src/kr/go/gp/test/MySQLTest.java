package kr.go.gp.test;
//DB테스트
import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.go.gp.util.MySQL8;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class MySQLTest {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	
	@Test
	public void test1(){
		try{
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.SAMPLE_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println("아이디 : "+rs.getString("item1"));
				System.out.println("포인트 : "+rs.getInt("item2"));
				System.out.println("가입일 : "+rs.getString("item3"));
				System.out.println("-----------------------------");
			}
		} catch(Exception e){
			System.out.println("데이터베이스 연동 실패");
		}
	}
}