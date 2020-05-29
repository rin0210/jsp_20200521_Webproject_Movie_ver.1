package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MovieDAO {
	private static MovieDAO single = null;

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private MovieDAO() {
	}

	public static MovieDAO getInstance() {
		if (single == null) {
			single = new MovieDAO();
		}
		return single;
	}

	// 상세내용 불러오기
	public MovieDTO getOne(String num) {
		MovieDTO searDTO = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from movie where no ='" + num + "'";
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				searDTO = new MovieDTO();
				searDTO.setNo(rs.getInt("no"));
				searDTO.setTitle(rs.getString("title"));
				searDTO.setYear(rs.getString("year"));
				searDTO.setAge(rs.getString("age"));
				searDTO.setTime(rs.getString("time"));
				searDTO.setContent(rs.getString("content"));
				searDTO.setActor(rs.getString("actor"));
				searDTO.setDirector(rs.getString("director"));
				searDTO.setGenre(rs.getString("genre"));
				searDTO.setImg_1(rs.getString("img_1"));
				searDTO.setImg_2(rs.getString("img_2"));
				searDTO.setVideo(rs.getString("video"));
				searDTO.setHits(rs.getInt("hits"));
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

	// 전체 목록 가져오기(최신순)
	public ArrayList<MovieDTO> getAll_Recent() {
		ArrayList<MovieDTO> list = new ArrayList<>();
		MovieDTO searDTO = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from movie order by no desc";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				searDTO = new MovieDTO();
				searDTO.setNo(rs.getInt("no"));
				searDTO.setTitle(rs.getString("title"));
				searDTO.setYear(rs.getString("year"));
				searDTO.setAge(rs.getString("age"));
				searDTO.setTime(rs.getString("time"));
				searDTO.setContent(rs.getString("content"));
				searDTO.setActor(rs.getString("actor"));
				searDTO.setDirector(rs.getString("director"));
				searDTO.setGenre(rs.getString("genre"));
				searDTO.setImg_1(rs.getString("img_1"));
				searDTO.setImg_2(rs.getString("img_2"));
				searDTO.setVideo(rs.getString("video"));
				searDTO.setHits(rs.getInt("hits"));

				list.add(searDTO);
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
		return list;
	}

	// 전체 목록 가져오기(조회순)
	public ArrayList<MovieDTO> getAll_Hits() {
		ArrayList<MovieDTO> list = new ArrayList<>();
		MovieDTO searDTO = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from movie order by hits desc";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				searDTO = new MovieDTO();
				searDTO.setNo(rs.getInt("no"));
				searDTO.setTitle(rs.getString("title"));
				searDTO.setYear(rs.getString("year"));
				searDTO.setAge(rs.getString("age"));
				searDTO.setTime(rs.getString("time"));
				searDTO.setContent(rs.getString("content"));
				searDTO.setActor(rs.getString("actor"));
				searDTO.setDirector(rs.getString("director"));
				searDTO.setGenre(rs.getString("genre"));
				searDTO.setImg_1(rs.getString("img_1"));
				searDTO.setImg_2(rs.getString("img_2"));
				searDTO.setVideo(rs.getString("video"));
				searDTO.setHits(rs.getInt("hits"));

				list.add(searDTO);
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
		return list;
	}

	// 조회수 업데이트
	public void updateHits(String num) {
		System.out.println("조회수 올라가고 있니?");
		String sql = "update movie set hits=hits+1 where no=?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
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
