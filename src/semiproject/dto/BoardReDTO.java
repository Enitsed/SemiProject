package semiproject.dto;

import java.util.Date;

public class BoardReDTO {
	private int board_num; // 게시번호
	private String user_id; // 회원아이디
	private String re_subject; // 답글제목
	private Date re_date; // 답글 작성일
	private int re_readcount; // 답글 조회수
	private String re_upload; // 답글 첨부파일
	private String content; // 답글 내용

	public BoardReDTO() {
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRe_subject() {
		return re_subject;
	}

	public void setRe_subject(String re_subject) {
		this.re_subject = re_subject;
	}

	public Date getRe_date() {
		return re_date;
	}

	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}

	public int getRe_readcount() {
		return re_readcount;
	}

	public void setRe_readcount(int re_readcount) {
		this.re_readcount = re_readcount;
	}

	public String getRe_upload() {
		return re_upload;
	}

	public void setRe_upload(String re_upload) {
		this.re_upload = re_upload;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}// end class
