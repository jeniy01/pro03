package kr.go.gp.dto;

import java.util.Date;

public class ReviewDTO {
	private String rnum;
	private String rtitle;
	private String rcontent;
	private String rauthor;
	private String rdate;
	
	public ReviewDTO(){
		Date now = new Date();
		this.rdate = now.toString();
	}

	public String getRnum() {
		return rnum;
	}

	public void setRnum(String rnum) {
		this.rnum = rnum;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRauthor() {
		return rauthor;
	}

	public void setRauthor(String rauthor) {
		this.rauthor = rauthor;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
}
