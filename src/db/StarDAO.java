package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StarDAO {
	private static StarDAO single = null;

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private StarDAO() {
	}

	public static StarDAO getInstance() {
		if (single == null) {
			single = new StarDAO();
		}
		return single;
	}

	// 아이디, 영화번호, 평가 등록
	public void insertStar(StarDTO sdto) {
		String sql = "insert into star(" + "id, no, star) " + "values(?, ?, ?)";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sdto.getId());
			pstmt.setInt(2, sdto.getNo());
			pstmt.setInt(3, sdto.getStar());
			pstmt.executeUpdate();

		} catch (SQLException e) {
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

	// 아이디, 영화 중복체크
	public boolean idCheck(String id, int no) {
		boolean result = true;

//			if (DBManager.getConnection() != null) {
		try {
			conn = DBManager.getConnection();
			String sql = "select * from star where id = ? and no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 글 삭제
	public void delOne(StarDTO sdto) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from star where id = ? and no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sdto.getId());
			pstmt.setInt(2, sdto.getNo());
			pstmt.executeUpdate();

		} catch (SQLException e) {
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
		insertStar(sdto);
	}

	// 내 평점 불러오기
	public StarDTO getMyStar(String id, int no) {
		StarDTO sdto = null;
		try {
			conn = DBManager.getConnection();
			String sql = "select * from star where id = ? and no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				sdto = new StarDTO();
				sdto.setId(id);
				sdto.setNo(no);
				sdto.setStar(rs.getInt("star"));
			} else {
				return null;
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
		return sdto;
	}

}
