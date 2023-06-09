package kr.go.gp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.gp.dto.ReviewDTO;
import kr.go.gp.util.MySQL8;

public class ReviewDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public int getRevGenerator(){
		int rnum = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.REV_GENERATOR);
			rs = pstmt.executeQuery();
			if(rs.next()){
				rnum = rs.getInt("rnum");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		
		int tmp = (rnum) + 1;
		rnum = tmp + 0;
		return rnum;
	}
	
	public int insertReview(ReviewDTO rev){
		int cnt = 0;		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.ADD_REVIEW);
			//pstmt.setInt(1, rev.getRnum());
			pstmt.setString(1, rev.getRtitle());
			pstmt.setString(2, rev.getRcontent());
			pstmt.setString(3, rev.getRauthor());
			pstmt.setString(4, rev.getFile1());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e){	
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);		
		return cnt;
	}
	
	public ReviewDTO getReviewSelectOne(int rnum){
		ReviewDTO rev = new ReviewDTO();
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.REVIEW_SELECT_ONE);
			pstmt.setInt(1,  rnum);
			rs = pstmt.executeQuery();
			if(rs.next()){
				rev.setRnum(rs.getInt("rnum"));
				rev.setRtitle(rs.getString("rtitle"));
				rev.setRcontent(rs.getString("rcontent"));
				rev.setRauthor(rs.getString("rauthor"));
				rev.setRdate(rs.getString("rdate"));
				rev.setFile1(rs.getString("file1"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return rev;
	}
	
	public int updateReview(ReviewDTO rev){
		int cnt = 0;		
		try {
			con = MySQL8.getConnection();
			if(rev.getFile1()==null){
				pstmt = con.prepareStatement(MySQL8.UPDATE_REVIEW);
				pstmt.setString(1, rev.getRcontent());
				pstmt.setString(2, rev.getRtitle());
				pstmt.setInt(3, rev.getRnum());
			}else {
				pstmt = con.prepareStatement(MySQL8.UPDATE_REVIEW2);
				pstmt.setString(1, rev.getRcontent());
				pstmt.setString(2, rev.getRtitle());
				pstmt.setInt(3, rev.getRnum());
				pstmt.setString(4, rev.getFile1());
			}		
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e){
			e.printStackTrace();
		}
			MySQL8.close(pstmt, con);
			return cnt;
	}
	
	public int deleteReview(int rnum){
		int cnt = 0;
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.DELETE_REVIEW);
			pstmt.setInt(1, rnum);
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
	
	public ArrayList<ReviewDTO> getAllReview(){
		ArrayList<ReviewDTO> rList = new ArrayList<ReviewDTO>();
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.ALL_REVIEW);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ReviewDTO rev = new ReviewDTO();
				rev.setRnum(rs.getInt("rnum"));
				rev.setRtitle(rs.getString("rtitle"));
				rev.setRcontent(rs.getString("rcontent"));
				rev.setRauthor(rs.getString("rauthor"));
				rev.setRdate(rs.getString("rdate"));
				rev.setFile1(rs.getString("file1"));
				rList.add(rev);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return rList;
	}
	
}