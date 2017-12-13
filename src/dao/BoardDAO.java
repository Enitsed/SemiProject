package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.BoardDAO;
import dto.BoardDTO;

public class BoardDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private BoardDAO() {

	}

	private static BoardDAO dao = new BoardDAO();

	public static BoardDAO getInstance() {
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

	//////////////////////// 목록

	public int countRow(String category) {
		int count = 0;
		try {
			conn = init();
			if (category == null || category.equals("")) {
				String sql = "select count(*) from board";
				pstmt = conn.prepareStatement(sql);
			} else {
				String sql = "select count(*) from board where board_category=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, category);
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				count = rs.getInt("count(*)");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

	public List<BoardDTO> listMethod(String category, int startRow, int endRow) {
		List<BoardDTO> aList = new ArrayList<BoardDTO>();
		String sql = null;
		try {
			conn = init();
			if (category == null || category.equals("")) {
				// 선택한 카테고리가 없을때
				sql = "select b.* from (select rownum as rm, a.* from (select * from board order by board_date desc)a)b where b.rm between ? and ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
			} else {
				// 선택한 카테고리가 있으면 해당 카테고리 글을 보여준다.
				sql = "select b.* from (select rownum as rm, a.* from (select * from board where board_category=? order by board_date desc)a)b where b.rm between ? and ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, category);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setUser_id(rs.getString("user_id"));
				dto.setBoard_num(rs.getInt("board_num"));
				dto.setBoard_subject(rs.getString("board_subject"));
				dto.setBoard_date(rs.getDate("board_date"));
				dto.setBoard_readcount(rs.getInt("board_readcount"));
				dto.setBoard_upload(rs.getString("board_upload"));
				dto.setBoard_content(rs.getString("board_content"));
				dto.setBoard_loc_code(rs.getInt("board_loc_code"));
				dto.setBoard_category(rs.getString("board_category"));

				aList.add(dto);
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
		return aList;
	} // end listMethod()

	////////////////////////// 글 상세보기
	public BoardDTO viewMethod(int num) {
		BoardDTO dto = null;
		try {
			conn = init();
			String sql = "select * from board where board_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new BoardDTO();
				dto.setUser_id(rs.getString("user_id"));
				dto.setBoard_num(rs.getInt("board_num"));
				dto.setBoard_subject(rs.getString("board_subject"));
				dto.setBoard_date(rs.getDate("board_date"));
				dto.setBoard_readcount(rs.getInt("board_readcount"));
				dto.setBoard_upload(rs.getString("board_upload"));
				dto.setBoard_content(rs.getString("board_content"));
				dto.setBoard_loc_code(rs.getInt("board_loc_code"));
				dto.setBoard_loc_city_code(rs.getInt("board_loc_city_code"));
				dto.setBoard_category(rs.getString("board_category"));

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
	}// end viewMethod()///////////////////////////////////////////////////////

	/////////////////////////////// 조회수
	public void readCountMethod(int num) {
		try {
			conn = init();
			String sql = "update board set board_readcount= board_readcount+1 where board_num=?";
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
	}// end readCountMethod()//////////////////////////////////////////////////

	public void writeMethod(String user_id, BoardDTO boardDto) {
		try {
			conn = init();
			String sql = "insert into board values(?,board_seq.nextval,?,sysdate,0,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, boardDto.getBoard_subject());
			pstmt.setString(3, boardDto.getBoard_upload());
			pstmt.setString(4, boardDto.getBoard_content());
			pstmt.setInt(5, boardDto.getBoard_loc_city_code());
			pstmt.setInt(6, boardDto.getBoard_loc_code());
			pstmt.setString(7, boardDto.getBoard_category());
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

	public String fileMethod(int num) {
		String filename = null;
		try {
			conn = init();
			String sql = "select board_upload from board where board_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next())
				filename = rs.getString("board_upload");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return filename;
	} // end fileMethod()

	public void deleteMethod(int num) {
		try {
			conn = init();
			String sql = "delete from board where board_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.execute();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	} // end deleteMethod()

	public void updateMethod(BoardDTO boardDto) {
		try {
			conn = init();
			String sql = "update board set board_subject=?, board_upload=?, board_content=?, board_loc_city_code=?, board_loc_code=?, board_category=? where board_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardDto.getBoard_subject());
			pstmt.setString(2, boardDto.getBoard_upload());
			pstmt.setString(3, boardDto.getBoard_content());
			pstmt.setInt(4, boardDto.getBoard_loc_city_code());
			pstmt.setInt(5, boardDto.getBoard_loc_code());
			pstmt.setString(6, boardDto.getBoard_category());
			pstmt.setInt(7, boardDto.getBoard_num());
			System.out.println(boardDto.getBoard_num());
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
	} // end updateMethod()
} // end class
