package kr.go.gp.dto;

import java.util.Date;

public class Notice {
	private String nnum;
	private String ntitle;
	private String ncontent;
	private String nauthor;
	private String file1;
	private String ndate;
	
	public Notice(){
		Date now = new Date();
		this.ndate = now.toString();
	}

	public String getNnum() {
		return nnum;
	}

	public void setNnum(String nnum) {
		this.nnum = nnum;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNauthor() {
		return nauthor;
	}

	public void setNauthor(String nauthor) {
		this.nauthor = nauthor;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

	public String getNdate() {
		return ndate;
	}

	public void setNdate(String ndate) {
		this.ndate = ndate;
	}

	@Override
	public String toString() {
		return "Notice [nnum=" + nnum + ", ntitle=" + ntitle + ", ncontent="
				+ ncontent + ", nauthor=" + nauthor + ", file1=" + file1
				+ ", ndate=" + ndate + "]";
	}
}
