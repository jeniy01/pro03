package kr.go.gp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import kr.go.gp.dto.BoardDTO;
import kr.go.gp.dto.CategoryDTO;
import kr.go.gp.util.MySQL8;

public class BoardDAOMysql {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	/*public ArrayList<CategoryDTO> getCategoryList(){
		ArrayList<CategoryDTO> cateList = new ArrayList<CategoryDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.CATEGORY_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CategoryDTO cate = new CategoryDTO();
				cate.setCate(rs.getString("cate"));
				cate.setCategroup(rs.getString("categroup"));
				cate.setCatename(rs.getString("catename"));
				cateList.add(cate);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return cateList;
	}
	
	public ArrayList<CategoryDTO> getCategoryName(String categroup) {
		ArrayList<CategoryDTO> cateList = new ArrayList<CategoryDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.CATEGORY_SELECT);
			pstmt.setString(1, categroup);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CategoryDTO cate = new CategoryDTO();
				cate.setCate(rs.getString("cate"));
				cate.setCategroup(rs.getString("categroup"));
				cate.setCatename(rs.getString("catename"));
				cateList.add(cate);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return cateList;
	}*/

	public BoardDTO getProduct(String bnum){
		BoardDTO pro = new BoardDTO();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_SELECT);
			pstmt.setString(1, bnum);
			rs = pstmt.executeQuery();
			if(rs.next()){
				pro.setBnum(rs.getString("bnum"));
				pro.setBtitle(rs.getString("btitle"));
				pro.setBcontent(rs.getString("bcontent"));
				pro.setBauthor(rs.getString("bauthor"));
				pro.setBdate(rs.getString("bdate"));
				pro.setPic1(rs.getString("pic1"));
				pro.setPic2(rs.getString("pic2"));
				pro.setPic3(rs.getString("pic3"));
				pro.setPic4(rs.getString("pic4"));
				pro.setPic5(rs.getString("pic5"));
				pro.setCate(rs.getString("cate"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return pro;
	}
	
	public ArrayList<BoardDTO> getProductList(){
		ArrayList<BoardDTO> proList = new ArrayList<BoardDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO pro = new BoardDTO();
				pro.setBnum(rs.getString("bnum"));
				pro.setBtitle(rs.getString("btitle"));
				pro.setBcontent(rs.getString("bcontent"));
				pro.setBauthor(rs.getString("bauthor"));
				pro.setBdate(rs.getString("bdate"));
				pro.setPic1(rs.getString("pic1"));
				pro.setPic2(rs.getString("pic2"));
				pro.setPic3(rs.getString("pic3"));
				pro.setPic4(rs.getString("pic4"));
				pro.setPic5(rs.getString("pic5"));
				pro.setCate(rs.getString("cate"));
				proList.add(pro);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return proList;
	}
	
	public ArrayList<BoardDTO> getCateProductList(String cate){
		ArrayList<BoardDTO> proList = new ArrayList<BoardDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.BOARD_CATE_SELECT);
			pstmt.setString(1, cate);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO pro = new BoardDTO();
				pro.setBnum(rs.getString("bnum"));
				pro.setBtitle(rs.getString("btitle"));
				pro.setBcontent(rs.getString("bcontent"));
				pro.setBauthor(rs.getString("bauthor"));
				pro.setBdate(rs.getString("bdate"));
				pro.setPic1(rs.getString("pic1"));
				pro.setPic2(rs.getString("pic2"));
				pro.setPic3(rs.getString("pic3"));
				pro.setPic4(rs.getString("pic4"));
				pro.setPic5(rs.getString("pic5"));
				pro.setCate(rs.getString("cate"));
				proList.add(pro);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return proList;
	}
	
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
	
	public ArrayList<CategoryDTO> getFirstCategoryList(){
		ArrayList<CategoryDTO> cateList = new ArrayList<CategoryDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.FIRST_CATEGORY_SELECT);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CategoryDTO cate = new CategoryDTO();
				cate.setCt(rs.getString("ct"));
				cate.setCategroup(rs.getString("categroup"));
				cateList.add(cate);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return cateList;
	}
	
	public ArrayList<CategoryDTO> getSecondCategoryList(String ct){
		ArrayList<CategoryDTO> cateList = new ArrayList<CategoryDTO>();
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.SECOND_CATEGORY_SELECT);
			pstmt.setString(1, ct);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CategoryDTO cate = new CategoryDTO();
				cate.setCate(rs.getString("cate"));
				cate.setCatename(rs.getString("catename"));
				cateList.add(cate);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(rs, pstmt, con);
		}
		return cateList;
	}
	
	public String getBoardCodeGenerator(String cate){
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
			pstmt.setString(1, boa.getBnum());
			pstmt.setString(2, boa.getBtitle());
			pstmt.setString(3, boa.getBcontent());
			pstmt.setString(4, boa.getBauthor());
			pstmt.setString(5, boa.getBdate());
			pstmt.setString(6, boa.getPic1());
			pstmt.setString(7, boa.getPic2());
			pstmt.setString(8, boa.getPic3());
			pstmt.setString(9, boa.getPic4());
			pstmt.setString(10, boa.getPic5());
			pstmt.setString(11, boa.getCate());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { //오라클 JDBC 클래스가 없거나 경로가 다른 경우 발생
			e.printStackTrace();
		} catch (SQLException e){	//sql 구문이 틀린 경우 발생
			e.printStackTrace();			
		} catch (Exception e){	//알 수 없는 예외인 경우 발생
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}

	public int updateBoard(BoardDTO boa) {
		int cnt =0 ;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.UPDATE_BOARD2);
			pstmt.setString(1, boa.getBtitle());
			pstmt.setString(2, boa.getBcontent());
			pstmt.setString(3, boa.getBauthor());
			pstmt.setString(4, boa.getBdate());
			pstmt.setString(5, boa.getPic1());
			pstmt.setString(6, boa.getPic2());
			pstmt.setString(7, boa.getPic3());
			pstmt.setString(8, boa.getPic4());
			pstmt.setString(9, boa.getPic5());
			pstmt.setString(10, boa.getBnum());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { //오라클 JDBC 클래스가 없거나 경로가 다른 경우 발생
			e.printStackTrace();
		} catch (SQLException e){	//sql 구문이 틀린 경우 발생
			e.printStackTrace();			
		} catch (Exception e){	//알 수 없는 예외인 경우 발생
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}

	public int deleteBoard(String bnum) {
		int cnt =0 ;
		try {
			con = MySQL8.getConnection();
			pstmt = con.prepareStatement(MySQL8.DELETE_BOARD);
			pstmt.setString(1, bnum);
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) { //오라클 JDBC 클래스가 없거나 경로가 다른 경우 발생
			e.printStackTrace();
		} catch (SQLException e){	//sql 구문이 틀린 경우 발생
			e.printStackTrace();			
		} catch (Exception e){	//알 수 없는 예외인 경우 발생
			e.printStackTrace();
		}
		MySQL8.close(pstmt, con);
		return cnt;
	}
}
