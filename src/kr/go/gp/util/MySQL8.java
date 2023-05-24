package kr.go.gp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySQL8 {
	static String driver = "com.mysql.cj.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/gp?serverTimezone=Asia/Seoul";
	static String user = "root";
	static String pass = "1234";
	
	public final static String SAMPLE_SELECT_ALL = "select * from sample1 order by item3 desc";
	public final static String SAMPLE_SELECT_ONE = "select * from sample1 where item1=?";
	public final static String SAMPLE_INSERT = "insert into sample1 values(?,?,default)";
	public final static String SAMPLE_UPDATE = "update sample1 set item2=? where item1=?";
	public final static String SAMPLE_DELETE = "delete from sample1 where item1=?";
	
	//공지사항 관련 SQL
	public final static String NNUM_GENERATER="select nnum from (select * from notice order by nnum desc) where rownum = 1";
	public final static String NOTICE_SELECT_ALL = "select * from notice order by nnum desc";
	public final static String NOTICE_SELECT_ONE = "select * from notice where nnum=?";
	public final static String INSERT_NOTICE = "insert into notice values (?,?,?,?,?,default)";
	public final static String UPDATE_NOTICE = "update notice set ntitle=?, ncontent=?, file1=? where nnum=?";
	public final static String UPDATE_NOTICE2 = "update notice set ntitle=?, ncontent=? where nnum=?";
	public final static String DELETE_NOTICE = "delete from notice where nnum=?";
	
	//회원 관련 SQL
	public final static String USER_SELECT_ALL = "select * from user1 order by udate desc";
	public final static String USER_LOGIN =  "select * from user1 where id=?";
	public final static String INSERT_USER = "insert into user1(id, pw, name, tel, addr, email) values (?,?,?,?,?,?)";
	public final static String UPDATE_USER = "update user1 set pw=?, name=?, tel=?, addr=?, email=? where id=?";
	public final static String UPDATE_USER2 = "update user1 set name=?, tel=?, addr=?, email=? where id=?";
	public final static String DELETE_USER = "delete from user1 where id=?";
	public final static String UPDATE_PW_RESET = "update user1 set pw=? where id=?";
	
	//리뷰 관련 SQL
	public final static String REV_GENERATOR = "select rnum from (select * from review order by rnum desc) where rownum = 1";
	public final static String ALL_REVIEW = "select * from review";
	public final static String REVIEW_SELECT_ONE = "select * from review where rnum=?";
	public final static String ADD_REVIEW = "insert into review values (default,?,?,?,?,default)";
	public final static String UPDATE_REVIEW = "update review set rcontent=?, rtitle=? where rnum=?";
	public final static String UPDATE_REVIEW2 = "update review set rcontent=?, rtitle=?, file1=? where rnum=?";
	public final static String DELETE_REVIEW = "delete from review where rnum=?";

	//Qna 관련 SQL
	public final static String QNUM_GENERATOR = "select qnum from (select * from qna order by qnum desc) where rownum = 1";
	public final static String ADD_QNA = "insert into qna values (?,?,?,?,default,1,?)";
	public final static String ADD_REPLY = "insert into qna values (?,?,?,?,default,2,?)";
	public final static String QNA_LIST = "select * from qna order by parno desc, qnum asc";
	public final static String QNA_SELECT = "select * from qna where parno=? order by qnum asc";
	public final static String QNA_SELECT_ONE = "select * from qna where qnum=?";
	public final static String REPLY_LIST = "select * from qna where parno=? and lev=2 order by qnum asc";
	public final static String REPLY_SELECT = "select * from qna where parno=? and lev=2 order by qnum asc";
	public final static String REPLY_SELECT_ONE = "select * from qna where lev=2 and qnum=? order by qnum asc";
	public final static String UPDATE_QNA = "update qna set qtitle=?, qcontent=? where qnum=?";
	public final static String DELETE_QNA = "delete from qna where parno=?";
	public final static String DELETE_REPLY = "delete from qna where qnum=?";

	//게시판 관련 SQL
	public final static String BOARD_CATENAME_SELECT = "select * from category where cate=?";
	public final static String BOARD_SELECT_ALL = "select * from board order by cate desc";
	public final static String BOARD_SELECT_ONE = "select * from board where bnum=?";
	public final static String BOARD_CATE_SELECT = "select * from board where cate=?";
	public final static String BOARD_CATE_SELECT2 = "select * from board where cate like ?||'%'";
	public final static String BNUM_GENERATOR = "select bnum from (select * from board where cate=? order by bnum desc) where rownum = 1";	
	public final static String INSERT_BOARD = "insert into board values(?,?,?,?,default,?,?,?,?,?,?)";
	public final static String UPDATE_BOARD = "update board set btitle=?, bcontent=? where bnum=?";
	public final static String UPDATE_BOARD2 = "update board set btitle=?, bcontent=?, pic1=?, pic2=?, pic3=?, pic4=?, pic5=? where bnum=?";
	public final static String DELETE_BOARD = "delete from board where bnum=?";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, pass);
		return con;
	}
	public static void close(PreparedStatement pstmt, Connection con){
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection con){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
