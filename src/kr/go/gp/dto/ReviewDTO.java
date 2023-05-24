package kr.go.gp.dto;

import java.util.Date;

public class ReviewDTO {
	private int rnum;
	private String rtitle;
	private String rcontent;
	private String rauthor;
	private String file1;
	private String rdate;
	public ReviewDTO(){
		Date now = new Date();
		this.rdate = now.toString();
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
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
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	@Override
	public String toString() {
		return "ReviewDTO [rnum=" + rnum + ", rtitle=" + rtitle + ", rcontent="
				+ rcontent + ", rauthor=" + rauthor + ", file1=" + file1
				+ ", rdate=" + rdate + "]";
	}
}
