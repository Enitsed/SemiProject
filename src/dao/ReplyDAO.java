package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.ReplyDTO;

public class ReplyDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private ReplyDAO() {

	}

	private static ReplyDAO dao = new ReplyDAO();

	public static ReplyDAO getInstance() {
		return dao;
	}

	private Connection init() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.OracleDriver");
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		return DriverManager.getConnection(url, user, password);
	} // end init();

	private void exit() throws SQLException {
		if (rs != null)
			rs.close();
		if (stmt != null)
			stmt.close();
		if (pstmt != null)
			pstmt.close();
		if (rs != null)
			rs.close();
		if (conn != null)
			conn.close();
	} // end exit();

	public List<ReplyDTO> listMethod(int num) {
		List<ReplyDTO> rList = new ArrayList<ReplyDTO>();
		try {
			conn = init();
			String sql = "select * from reply where board_num=? order by reply_num";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReplyDTO dto = new ReplyDTO();
				dto.setUser_id(rs.getString("user_id"));
				dto.setBoard_num(rs.getInt("board_num"));
				dto.setReply_num(rs.getInt("reply_num"));
				dto.setReply_content(rs.getString("reply_content"));
				dto.setReply_date(rs.getDate("reply_date"));
				rList.add(dto);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return rList;
	}// end listMethod()

	public void replyWriteMethod(String user_id, ReplyDTO dto, int num) {
		try {
			conn = init();
			String sql = "insert into reply values(?,?,reply_seq.nextval,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setInt(2, num);
			pstmt.setString(3, dto.getReply_content());
			pstmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	} // end writeMethod()

	public void replyDeleteMethod(int num) {
		try {
			conn = init();
			String sql = "delete from reply where reply_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	} // end replyDeleteMethod()

}// end class