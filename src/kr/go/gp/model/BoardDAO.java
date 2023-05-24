package kr.go.gp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import kr.go.gp.dto.BoardDTO;
import kr.go.gp.util.MySQL8;

public class BoardDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public HashMap<String, String> getCategory(String cate){
		HashMap<String, String> cateMap = new HashMap<String, String>();
		String cateGroup = "";
		String cateName = "";
		if(cate.length()==2){
			cate = cate + "01";
		}
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_CATENAME_SELECT);
			pstmt.setString(1, cate);
			rs = pstmt.executeQuery();	
			if(rs.next()){
				cateGroup = "catename";
				cateName = rs.getString("catename");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		cateMap.put(cateGroup, cateName);
		return cateMap;
	}
	
	public ArrayList<BoardDTO> getBoardList(){
		ArrayList<BoardDTO> boaList = new ArrayList<BoardDTO>();
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO boa = new BoardDTO();
				boa.setBnum(rs.getString("bnum"));
				boa.setBtitle(rs.getString("btitle"));
				boa.setBcontent(rs.getString("bcontent"));
				boa.setBauthor(rs.getString("bauthor"));
				boa.setBdate(rs.getString("bdate"));
				boa.setPic1(rs.getString("pic1"));
				boa.setPic1(rs.getString("pic2"));
				boa.setPic1(rs.getString("pic3"));
				boa.setPic1(rs.getString("pic4"));
				boa.setPic1(rs.getString("pic5"));
				boa.setCate(rs.getString("cate"));
				boaList.add(boa);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return boaList;
	}
	
	public BoardDTO getBoard(String bnum){
		BoardDTO boa = new BoardDTO();
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_SELECT_ONE);
			pstmt.setString(1, bnum);
			rs = pstmt.executeQuery();
			if(rs.next()){
				boa.setBtitle(rs.getString("btitle"));
				boa.setBcontent(rs.getString("bcontent"));
				boa.setBauthor(rs.getString("bauthor"));
				boa.setBdate(rs.getString("bdate"));
				boa.setPic1(rs.getString("pic1"));
				boa.setPic1(rs.getString("pic2"));
				boa.setPic1(rs.getString("pic3"));
				boa.setPic1(rs.getString("pic4"));
				boa.setPic1(rs.getString("pic5"));
				boa.setCate(rs.getString("cate"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return boa;
	}
	
	public ArrayList<BoardDTO> getCateBoardList(String cate){
		ArrayList<BoardDTO> boaList = new ArrayList<BoardDTO>();
		
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_CATE_SELECT);
			pstmt.setString(1, cate);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO boa = new BoardDTO();
				boa.setBnum(rs.getString("bnum"));
				boa.setBtitle(rs.getString("btitle"));
				boa.setBcontent(rs.getString("bcontent"));
				boa.setBauthor(rs.getString("bauthor"));
				boa.setBdate(rs.getString("bdate"));
				boa.setPic1(rs.getString("pic1"));
				boa.setPic1(rs.getString("pic2"));
				boa.setPic1(rs.getString("pic3"));
				boa.setPic1(rs.getString("pic4"));
				boa.setPic1(rs.getString("pic5"));
				boaList.add(boa);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return boaList;
	}
	
	public ArrayList<BoardDTO> getAdminCateBoardList(String cate){
		ArrayList<BoardDTO> boaList = new ArrayList<BoardDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_CATE_SELECT2);
			pstmt.setString(1, cate);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO boa = new BoardDTO();
				boa.setBnum(rs.getString("bnum"));
				boa.setBtitle(rs.getString("btitle"));
				boa.setBcontent(rs.getString("bcontent"));
				boa.setBauthor(rs.getString("bauthor"));
				boa.setBdate(rs.getString("bdate"));
				boa.setPic1(rs.getString("pic1"));
				boa.setPic1(rs.getString("pic2"));
				boa.setPic1(rs.getString("pic3"));
				boa.setPic1(rs.getString("pic4"));
				boa.setPic1(rs.getString("pic5"));
				boaList.add(boa);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return boaList;
	}
	
	public String getBnumGenerator(String cate){
		String bnum = "";
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BNUM_GENERATOR);
			pstmt.setString(1, cate);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bnum = rs.getString("bnum").substring(4);
			} else {
				bnum = "0";
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		int tmp = 0;
		if(bnum==null){
			bnum = tmp + "0001";
		} else {
			tmp = Integer.parseInt(bnum) + 1;
			if(tmp>=1000){
				bnum = tmp + "";
			} else if(tmp>=100) {
				bnum = "0" + tmp;
			} else if(tmp>=10) {
				bnum = "00" + tmp;
			} else {
				bnum = "000" + tmp;
			}			
		}
		return bnum;
	}
	
	public int insertBoard(BoardDTO boa) {
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.INSERT_BOARD);
			boa.setBtitle(rs.getString("btitle"));
			boa.setBcontent(rs.getString("bcontent"));
			boa.setBauthor(rs.getString("bauthor"));
			boa.setPic1(rs.getString("pic1"));
			boa.setPic1(rs.getString("pic2"));
			boa.setPic1(rs.getString("pic3"));
			boa.setPic1(rs.getString("pic4"));
			boa.setPic1(rs.getString("pic5"));
			boa.setCate(rs.getString("cate"));
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		} catch (SQLException e){	
			e.printStackTrace();			
		} catch (Exception e){	
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}
	
	public int UpdateBoard(BoardDTO boa) {
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.UPDATE_BOARD);
			pstmt.setString(1, boa.getBtitle());
			pstmt.setString(2, boa.getBcontent());
			pstmt.setString(3, boa.getBnum());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		} catch (SQLException e){	
			e.printStackTrace();			
		} catch (Exception e){	
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}

	public int Update2Board(BoardDTO boa) {
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.UPDATE_BOARD2);
			pstmt.setString(1, boa.getBtitle());
			pstmt.setString(2, boa.getBcontent());
			pstmt.setString(3, boa.getPic1());
			pstmt.setString(4, boa.getPic2());
			pstmt.setString(5, boa.getPic3());
			pstmt.setString(6, boa.getPic4());
			pstmt.setString(7, boa.getPic5());
			pstmt.setString(8, boa.getBnum());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		} catch (SQLException e){	
			e.printStackTrace();			
		} catch (Exception e){	
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}
	
	public int deleteBoard(String bnum) {
		int cnt = 0;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.DELETE_BOARD);
			pstmt.setString(1, bnum);
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		} catch (SQLException e){	
			e.printStackTrace();			
		} catch (Exception e){	
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}
}
