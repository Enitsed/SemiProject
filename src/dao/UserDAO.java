package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import dto.UserDTO;

public class UserDAO {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private UserDAO() {

	}

	private static UserDAO dao = new UserDAO();

	public static UserDAO getInstance() {
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

	////////////////////////////////////////////////////////////////////

	public void insertMethod(UserDTO dto) {
		try {
			conn = init();
			String sql = "insert into users values(user_seq.nextval,?,?,?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUser_name());
			pstmt.setString(2, dto.getUser_id());
			pstmt.setString(3, dto.getUser_pw());
			pstmt.setString(4, dto.getUser_gender());
			pstmt.setString(5, dto.getUser_email());
			pstmt.setString(6, dto.getUser_address());
			pstmt.setString(7, dto.getUser_contact());
			pstmt.setString(8, dto.getUser_birthday());
			pstmt.executeQuery();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	} // end insertMethod(); // 회원가입

	public boolean memChk(HashMap<String, String> memInfo) {
		String user_id = memInfo.get("user_id");
		String user_pw = memInfo.get("user_pw");
		try {
			conn = init();
			String sql = "Select user_id, user_pw from users where user_id='" + user_id + "' and user_pw='" + user_pw
					+ "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				user_id = rs.getString("user_id");
				user_pw = rs.getString("user_pw");

				return true;
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

		return false;

	} // end memChk(); 멤버 여부 확인

	public UserDTO getMemInfo(HashMap<String, String> memInfo) {
		UserDTO dto = new UserDTO();
		String user_id = memInfo.get("user_id");
		String user_pw = memInfo.get("user_pw");
		try {
			conn = init();
			String sql = "Select * from users where user_id='" + user_id + "' and user_pw='" + user_pw + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				dto.setUser_name(rs.getString("user_name"));
				dto.setUser_id(user_id);
				dto.setUser_gender(rs.getString("user_gender"));
				dto.setUser_email(rs.getString("user_email"));
				dto.setUser_address(rs.getString("user_address"));
				dto.setUser_contact(rs.getString("user_contact"));
				dto.setUser_birthday(rs.getString("user_birthday"));
				dto.setUser_join_date(rs.getDate("user_join_date"));
				return dto;
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
		return null;
	} // getMemInfo() 유저 정보 받아오기

} // end class
