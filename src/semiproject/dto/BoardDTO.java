package semiproject.dto;

import java.util.Date;

public class BoardDTO {
	private String user_id; // 회원아이디
	private int board_num; // 게시번호
	private String board_subject; // 제목
	private Date board_date; // 작성일
	private int board_readcount; // 조회수
	private String board_upload; // 첨부파일
	private String board_content; // 내용
	private int board_loc_code; // 지역코드

	public BoardDTO() {
		
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getBoard_subject() {
		return board_subject;
	}

	public void setBoard_subject(String board_subject) {
		this.board_subject = board_subject;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public int getBoard_readcount() {
		return board_readcount;
	}

	public void setBoard_readcount(int board_readcount) {
		this.board_readcount = board_readcount;
	}

	public String getBoard_upload() {
		return board_upload;
	}

	public void setBoard_upload(String board_upload) {
		this.board_upload = board_upload;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getBoard_loc_code() {
		return board_loc_code;
	}

	public void setBoard_loc_code(int board_loc_code) {
		this.board_loc_code = board_loc_code;
	}

}// end class
