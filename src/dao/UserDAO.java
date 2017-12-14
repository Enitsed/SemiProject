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

	// 회원 탈퇴
	public void deleteMem(String user_id) {
		try {
			conn = init();
			String sql = "delete from users where user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}// end deleteMem()

	public UserDTO memberinfo(String user_id) {
		UserDTO dto = new UserDTO();
		try {
			conn = init();
			String sql = "SELECT * FROM users WHERE user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setUser_num(rs.getInt("user_num"));
				dto.setUser_name(rs.getString("user_name"));
				dto.setUser_id(rs.getString("user_id"));
				dto.setUser_pw(rs.getString("user_pw"));
				dto.setUser_gender(rs.getString("user_gender"));
				dto.setUser_email(rs.getString("user_email"));
				dto.setUser_address(rs.getString("user_address"));
				dto.setUser_contact(rs.getString("user_contact"));
				dto.setUser_birthday(rs.getString("user_birthday"));
				dto.setUser_join_date(rs.getDate("user_join_date"));
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
		return dto;
	}// end memberinfo()

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

	// 회원정보 업데이트
	public void memUpdate(UserDTO dto) {

		try {
			conn = init();
			String sql = "update users set user_pw=?, user_address=?, user_contact=?, user_email=? where user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUser_pw());
			pstmt.setString(2, dto.getUser_address());
			pstmt.setString(3, dto.getUser_contact());
			pstmt.setString(4, dto.getUser_email());
			pstmt.setString(5, dto.getUser_id());
			pstmt.executeQuery();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}// end memUpdate()

	// 회원 탈퇴
	public int deleteMem(String user_id, String user_pw) {
		int ok = -1;
		try {
			conn = init();
			String sql = "select user_pw from users where user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String delete_pw = rs.getString("user_pw");
				if (delete_pw.equals(user_pw)) {
					pstmt = conn.prepareStatement("delete from users where user_id=?");
					pstmt.setString(1, user_id);
					pstmt.executeUpdate();
					ok = 1; // 탈퇴 성공
				} else {
					ok = 0; // 비밀번호 틀렸음
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return ok;
	}// end deleteMem()

	public String findId(String user_name, String user_contact) {
		String find_id = "";
		try {
			conn = init();
			String sql = "select user_id from users where user_name='" + user_name + "' and user_contact='"
					+ user_contact + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				find_id = rs.getString("user_id");
			} else {
				System.out.println("그런 아이디 없음~~");
				find_id = "";
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
		return find_id;
	}// end findId()

	public String findPw(String user_id, String user_name) {
		String find_pw = "";
		try {
			conn = init();
			String sql = "select user_pw from users where user_id='" + user_id + "' and user_name='" + user_name + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				find_pw = rs.getString("user_pw");
			} else {
				System.out.println("비밀번호 없음~~");
				find_pw = "";
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
		return find_pw;
	}// end findId()

	public int Confirm_id(String user_id) {
		int x = -1;
		try {
			conn = init();
			String sql = "select user_id from users where user_id= '" + user_id + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				x = 1; // 아이디 존재
				System.out.println(x);
			} else {
				x = 0; // 아이디 없음
				System.out.println(x);
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
		return x;
	} // end Confirm_id()

} // end class