package kr.go.gp.dto;

import java.util.Date;

public class Qna {
	private String qnum;
	private String qtitle;
	private String qcontent;
	private String qauthor;
	private String qdate;
	
	public Qna(){
		Date now = new Date();
		this.qdate = now.toString();
	}

	public String getQnum() {
		return qnum;
	}

	public void setQnum(String qnum) {
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
}
