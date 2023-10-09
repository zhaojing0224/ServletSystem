package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnJdbc {

	private final String hostName = "localhost:5432";
	private final String dbName = "zhao";
	private final String username = "postgres";
	private final String password = "postgres";

	private final String connectionURL = "jdbc:postgresql://" + hostName + "/" + dbName;

	public Connection connectDb() {
		//创建连接对象
		Connection conn = null;

		try {
			// 1. 注册 PostgreSQL 驱动程序
			Class.forName("org.postgresql.Driver");
			// 2. 建立数据库连接
			conn = DriverManager.getConnection(connectionURL, username, password);

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(ConnJdbc.class.getName()).log(Level.SEVERE, null, ex);
		}

		return conn;

	}

}