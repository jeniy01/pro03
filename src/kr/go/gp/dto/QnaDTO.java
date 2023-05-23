package kr.go.gp.dto;

import java.util.Date;

public class QnaDTO {
	private int qnum;
	private String qtitle;
	private String qcontent;
	private String qauthor;
	private String qdate;
	private int lev;
	private String parno;
	
	public QnaDTO(){
		Date now = new Date();
		this.qdate = now.toString();
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQauthor() {
		return qauthor;
	}

	public void setQauthor(String qauthor) {
		this.qauthor = qauthor;
	}

	public String getQdate() {
		return qdate;
	}

	public void setQdate(String qdate) {
		this.qdate = qdate;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
	}

	public String getParno() {
		return parno;
	}

	public void setParno(String parno) {
		this.parno = parno;
	}
}