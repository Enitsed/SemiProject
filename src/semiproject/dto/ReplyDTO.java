package semiproject.dto;

import java.util.Date;

public class ReplyDTO {
	private String user_id; // 회원아이디
	private int board_num; // 게시번호
	private String reply_content; // 댓글 내용
	private Date reply_date; // 댓글 작성일

	public ReplyDTO() {
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

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

}// end class
