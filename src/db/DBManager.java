package db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() { // Connection 연결
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/myoracle이란 이름을 객체를 찾아서 DataSource가 받음
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			// ds가 생성되었으므로 Connection을 구함
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
