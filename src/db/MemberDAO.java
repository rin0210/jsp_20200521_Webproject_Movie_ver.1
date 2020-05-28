package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberDAO {
	private static MemberDAO single = null;

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private MemberDAO() {
	}

	public static MemberDAO getInstance() {
		if (single == null) {
			single = new MemberDAO();
		}
		return single;
	}

	// 아이디 중복체크
	public boolean idCheck(String id) {
		boolean result = true;

//		if (DBManager.getConnection() != null) {
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from member where id='" + id + "'";
			rs = stmt.executeQuery(sql);
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
//		} 
//	else {
//			System.out.println("DB 접속 오류!!");
//		}
		return result;
	}

	// 회원 등록
	public void insert(MemberDTO mdto) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into member values(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mdto.getName());
			pstmt.setString(2, mdto.getId());
			pstmt.setString(3, mdto.getPwd());
			pstmt.setString(4, mdto.getTel());
			pstmt.setInt(5, 1);

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

	// 로그인 체크
	public MemberDTO selOne(String id, String pwd) {
		MemberDTO searDTO = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from member where id='" + id + "' and pwd='" + pwd + "'";
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				searDTO = new MemberDTO();
				searDTO.setName(rs.getString("name"));
				searDTO.setId(rs.getString("id"));
				searDTO.setPwd(rs.getString("pwd"));
				searDTO.setTel(rs.getString("tel"));
				searDTO.setLev(rs.getInt("lev"));
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
		return searDTO;
	}

	// 회원 정보 불러오기
	public MemberDTO selMyInfo(String id) {
		MemberDTO searDTO = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from member where id='" + id + "'";
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				searDTO = new MemberDTO();
				searDTO.setName(rs.getString("name"));
				searDTO.setId(rs.getString("id"));
				searDTO.setPwd(rs.getString("pwd"));
				searDTO.setTel(rs.getString("tel"));
				searDTO.setLev(rs.getInt("lev"));
				searDTO.setImg(rs.getString("img"));
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
		return searDTO;
	}

	// 이미지 파일 등록(수정)
	public boolean updateProfile(String name, String img, String id) {
		String sql = "update member set name = ?, img = ? where id = ?";

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, img);
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			return true;

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
		return false;
	}

	// 회원 레벨 수정
	public boolean updateLevel(int lev, String id) {
		String sql = "update member set lev = ? where id = ?";

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, lev);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			return true;

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
		return false;
	}
}
