package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CommentDAO {
	private static CommentDAO single = null;
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private CommentDAO() {
	}

	public static CommentDAO getInstance() {
		if (single == null) {
			single = new CommentDAO();
		}
		return single;
	}

	// 댓글 등록
	public void insertComment(CommentDTO cdto) {
		String sql_1 = "select commentmemo_no.nextval from dual";
		String sql_2 = "insert into commentmemo("
				+ "commentno, movieno, id, name, content, img, writedate, grp, seq, lvl) "
				+ "values(?, ?, ?, ?, ?, ?, sysdate, ?, ?, ?)";
		int commentmemo_no = 0;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql_1);
			pstmt = conn.prepareStatement(sql_2);
			if (rs.next()) {
				commentmemo_no = rs.getInt("nextval");
				pstmt.setInt(1, commentmemo_no);
			}
			pstmt.setInt(2, cdto.getMovieno());
			pstmt.setString(3, cdto.getId());
			pstmt.setString(4, cdto.getName());
			pstmt.setString(5, cdto.getContent());
			pstmt.setString(6, cdto.getImg());
			pstmt.setInt(7, commentmemo_no); // grp는 글번호와 같게 만듦
			pstmt.setInt(8, 0); // 원글이기 때문에 seq와 lvl은 각각 0
			pstmt.setInt(9, 0);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
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
	}

	// 댓글 가져오기
	public ArrayList<CommentDTO> selectCommentByNum(String num) {
		String sql = "select * from commentmemo where movieno = ? order by grp asc, seq asc";
		ArrayList<CommentDTO> commentList = new ArrayList<CommentDTO>();
		CommentDTO cdto = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cdto = new CommentDTO();
				cdto.setCommentno(rs.getInt("commentno"));
				cdto.setMovieno(rs.getInt("movieno"));
				cdto.setId(rs.getString("id"));
				cdto.setName(rs.getString("name"));
				cdto.setContent(rs.getString("content"));
				cdto.setImg(rs.getString("img"));
				cdto.setWritedate(rs.getString("writedate"));
				cdto.setGrp(rs.getInt("grp"));
				cdto.setSeq(rs.getInt("seq"));
				cdto.setLvl(rs.getInt("lvl"));
				commentList.add(cdto);
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
		return commentList;
	}

	// 대댓글 등록
	public void insertReComment(CommentDTO cdto) {
		String sql_1 = "select commentmemo_no.nextval from dual";
		String sql_2 = "insert into commentmemo("
				+ "commentno, movieno, id, name, content, img, writedate, grp, seq, lvl) "
				+ "values(?, ?, ?, ?, ?, ?, sysdate, ?, ?, ?)";
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql_1);
			pstmt = conn.prepareStatement(sql_2);
			if (rs.next()) {
				int commentmemo_no = rs.getInt("nextval");
				pstmt.setInt(1, commentmemo_no);
			}
			pstmt.setInt(2, cdto.getMovieno());
			pstmt.setString(3, cdto.getId());
			pstmt.setString(4, cdto.getName());
			pstmt.setString(5, cdto.getContent());
			pstmt.setString(6, cdto.getImg());
			pstmt.setInt(7, cdto.getGrp()); // grp는 글번호와 같게 만듦
			pstmt.setInt(8, cdto.getSeq()); // 원글이기 때문에 seq와 lvl은 각각 0
			pstmt.setInt(9, cdto.getLvl());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
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
	}

	// 댓글 seq수정
	public void updateCommentSeq(CommentDTO cdto) {
		String sql = "update commentmemo set seq = seq+1 where grp = ? and seq >= ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cdto.getGrp());
			pstmt.setInt(2, cdto.getSeq());

			pstmt.executeUpdate();

			insertReComment(cdto);

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

	// 대댓글 가져오기
	public ArrayList<CommentDTO> selectOneGroupComment(String grp) {
		String sql = "select * from commentmemo where grp = ?";
		ArrayList<CommentDTO> commentList = new ArrayList<CommentDTO>();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, grp);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CommentDTO cdto = new CommentDTO();
				cdto.setCommentno(rs.getInt("commentno"));
				cdto.setMovieno(rs.getInt("movieno"));
				cdto.setId(rs.getString("id"));
				cdto.setName(rs.getString("name"));
				cdto.setContent(rs.getString("content"));
				cdto.setImg(rs.getString("img"));
				cdto.setWritedate(rs.getString("writedate"));
				cdto.setGrp(rs.getInt("grp"));
				cdto.setSeq(rs.getInt("seq"));
				cdto.setLvl(rs.getInt("lvl"));
				commentList.add(cdto);
			}
		} catch (SQLException e) {
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
		return commentList;
	}

	// 최신 리뷰 가져오기
	public ArrayList<CommentDTO> selectRecentReview() {
		ArrayList<CommentDTO> reviewList = new ArrayList<CommentDTO>();
		CommentDTO cdto = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from recentreview order by writedate desc";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
			cdto = new CommentDTO();
			cdto.setNo(rs.getString("no"));
			cdto.setImg_1(rs.getString("img_1"));
			cdto.setCommentno(rs.getInt("commentno"));
			cdto.setMovieno(rs.getInt("movieno"));
			cdto.setId(rs.getString("id"));
			cdto.setName(rs.getString("name"));
			cdto.setContent(rs.getString("content"));
			cdto.setWritedate(rs.getString("writedate"));
			reviewList.add(cdto);
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
		return reviewList;
	}
}
