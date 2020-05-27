package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HitsDAO {
	private static HitsDAO single = null;

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private HitsDAO() {
	}

	public static HitsDAO getInstance() {
		if (single == null) {
			single = new HitsDAO();
		}
		return single;
	}
	
	// 아이디, 영화번호 등록
		public void insertCount(String id, int num) {
			String sql = "insert into hits(" + "id, no) " + "values(?, ?)";
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setInt(2, num);
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

		// 아이디, 영화번호 중복 체크
		public boolean idNumChk(String id, int num) {
			boolean result = true;
			String sql = "select * from hits where id = ? and no = ?";
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
}
