package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookmarkDAO {
	private static BookmarkDAO single = null;

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private BookmarkDAO() {
	}

	public static BookmarkDAO getInstance() {
		if (single == null) {
			single = new BookmarkDAO();
		}
		return single;
	}

	// 아이디, 영화번호 등록
	public void insertBookmark(String id, int num) {
		String sql = "insert into bookmark(" + "id, no) " + "values(?, ?)";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 아이디, 영화번호 중복 체크
	public boolean idNumChk(String id, int num) {
		boolean result = true;
		String sql = "select * from bookmark where id = ? and no = ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = false; // 중복됨
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 아이디, 영화번호 삭제
	public void delBookmark(String id, int num) {
		String sql = "delete from bookmark where id = ? and no = ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 찜 목록 가져오기
	public ArrayList<BookmarkDTO> getAll_MyContents(String id) {
		ArrayList<BookmarkDTO> list = new ArrayList<>();
		BookmarkDTO searDTO = null;
		String sql = "select * from mycontentsview where id = ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searDTO = new BookmarkDTO();
				searDTO.setNo(rs.getInt("no"));
				searDTO.setId(rs.getString("id"));
				searDTO.setImg_1(rs.getString("img_1"));

				list.add(searDTO);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

}
