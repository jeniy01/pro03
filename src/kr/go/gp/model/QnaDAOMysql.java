package kr.go.gp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.gp.dto.QnaDTO;
import kr.go.gp.util.MySQL8;

public class QnaDAOMysql {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public String getQnoGenerator(){
		String qnum = "";
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.QNO_GENERATOR);
			rs = pstmt.executeQuery();
			if(rs.next()){
				qnum = rs.getString("qnum");
			} else {
				qnum = "00000000";
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		
		int tmp = Integer.parseInt(qnum) + 1;
		if(qnum=="00000000"){
			qnum = "0000000" + tmp;
		} else if(tmp>=10000000){
			qnum = tmp + "";
		} else if(tmp>=1000000){
			qnum = "0" + tmp;
		} else if(tmp>=100000) {
			qnum = "00" + tmp;
		} else if(tmp>=10000) {
			qnum = "000" + tmp;
		} else if(tmp>=1000) {
			qnum = "0000" + tmp;
		} else if(tmp>=100) {
			qnum = "00000" + tmp;
		} else if(tmp>=10) {
			qnum = "000000" + tmp;
		} else {
			qnum = "0000000" + tmp;
		}
		return qnum;
	}
	
	public int addQna(QnaDTO qna){
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.ADD_QNA);
			pstmt.setString(1, qna.getQnum());
			pstmt.setString(2, qna.getQtitle());
			pstmt.setString(3, qna.getQcontent());
			pstmt.setString(4, qna.getQauthor());
			pstmt.setString(5, qna.getQnum());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(pstmt, con);
		}
		return cnt;
	}
	
	public int addReply(QnaDTO qna){
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.ADD_REPLY);
			pstmt.setString(1, qna.getQnum());
			pstmt.setString(2, qna.getQtitle());
			pstmt.setString(3, qna.getQcontent());
			pstmt.setString(4, qna.getQauthor());
			pstmt.setString(5, qna.getParno());			
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(pstmt, con);
		}
		return cnt;
	}
	
	public int delQna(String qnum){
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.DELETE_QNA);
			pstmt.setString(1, qnum);				
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(pstmt, con);
		}
		return cnt;		
	}
	
	public int delReply(String qnum){
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.DELETE_REPLY);
			pstmt.setString(1, qnum);				
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(pstmt, con);
		}
		return cnt;		
	}
	
	public int updateReply(QnaDTO qna){
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.UPDATE_QNA);
			pstmt.setString(1, qna.getQtitle());
			pstmt.setString(2, qna.getQcontent());
			pstmt.setString(3, qna.getQnum());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return cnt;
	}
	
	public ArrayList<QnaDTO> getQnaList(){
		ArrayList<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.QNA_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()){
				QnaDTO qna = new QnaDTO();
				qna.setQnum(rs.getString("qnum"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcontent(rs.getString("qcontent"));
				qna.setQauthor(rs.getString("qauthor"));
				qna.setQdate(rs.getString("qdate"));
				qna.setLev(rs.getInt("lev"));
				qna.setParno(rs.getString("parno"));				
				qnaList.add(qna);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return qnaList;
	}
	
	public ArrayList<QnaDTO> getQna(String qnum){
		ArrayList<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.QNA_SELECT);
			pstmt.setString(1, qnum);
			rs = pstmt.executeQuery();
			while(rs.next()){
				QnaDTO qna = new QnaDTO();
				qna.setQnum(rs.getString("qnum"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcontent(rs.getString("qcontent"));
				qna.setQauthor(rs.getString("qauthor"));
				qna.setQdate(rs.getString("qdate"));
				qna.setLev(rs.getInt("lev"));
				qna.setParno(rs.getString("parno"));				
				qnaList.add(qna);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return qnaList;
	} 
	
	public QnaDTO getQna2(String qnum){
		QnaDTO qna = new QnaDTO();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.QNA_SELECT_ONE);
			pstmt.setString(1, qnum);
			rs = pstmt.executeQuery();
			if(rs.next()){
				qna.setQnum(rs.getString("qnum"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcontent(rs.getString("qcontent"));
				qna.setQauthor(rs.getString("qauthor"));
				qna.setQdate(rs.getString("qdate"));
				qna.setLev(rs.getInt("lev"));
				qna.setParno(rs.getString("parno"));				
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return qna;
	} 
	
	public ArrayList<QnaDTO> getReplyList(String qnum){
		ArrayList<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.REPLY_LIST);
			pstmt.setString(1, qnum);
			rs = pstmt.executeQuery();
			while(rs.next()){
				QnaDTO qna = new QnaDTO();
				qna.setQnum(rs.getString("qnum"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcontent(rs.getString("qcontent"));
				qna.setQauthor(rs.getString("qauthor"));
				qna.setQdate(rs.getString("qdate"));
				qna.setLev(rs.getInt("lev"));
				qna.setParno(rs.getString("parno"));				
				qnaList.add(qna);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return qnaList;
	}
}
