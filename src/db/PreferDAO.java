package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class PreferDAO {
	private static PreferDAO single = null;

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private PreferDAO() {
	}

	public static PreferDAO getInstance() {
		if (single == null) {
			single = new PreferDAO();
		}
		return single;
	}
	
	// 아이디, 영화번호, 평가 등록
		public void insertPrefer(String id, int num, String like) {
			String sql = "insert into bookmark(" + "id, no) " + "values(?, ?)";
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
}
