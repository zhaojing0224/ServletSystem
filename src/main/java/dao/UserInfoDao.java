package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.logging.Level;
import java.util.logging.Logger;

import obj.UserInfoObj;

public class UserInfoDao {

	Connection conn = null;
	Statement stmt = null;
	ResultSet rset = null;

	final String jdbcUrl = "jdbc:postgresql://localhost:5432/zhao";
	final String username = "postgres";
	final String password = "postgres";

	public void addUserInfo(UserInfoObj userInfoObj) {

		LocalDateTime currentTime = LocalDateTime.now();

		try {
			Class.forName("org.postgresql.Driver");
			Connection connection = DriverManager.getConnection(jdbcUrl, username, password);

			StringBuffer sb = new StringBuffer();
			sb.append(
					"INSERT INTO kakunin (email, user_id, password, name_sei, name_mei, name_sei_kata, name_mei_kata, deletion_flag, creation_date, update_date) VALUES(");

			sb.append("'" + userInfoObj.getEmail() + "',");
			sb.append("'" + userInfoObj.getUserId() + "',");
			sb.append("'" + userInfoObj.getPassword() + "',");
			sb.append("'" + userInfoObj.getNameSei() + "',");
			sb.append("'" + userInfoObj.getNameMei() + "',");
			sb.append("'" + userInfoObj.getNameSeiKata() + "',");
			sb.append("'" + userInfoObj.getNameMeiKata() + "',");
			sb.append("'" + 0 + "',");
			sb.append("'" + currentTime + "',");
			sb.append("'" + currentTime + "');");

			System.out.println(sb.toString());

			// 4. 创建 Statement 对象
			Statement statement = connection.createStatement();

			// 5. 执行查询并获取结果集
			statement.executeUpdate(sb.toString());

			// 7. 关闭资源
			statement.close();
			connection.close();

		} catch (SQLException | ClassNotFoundException ex) {
			Logger.getLogger(ConnJdbc.class.getName()).log(Level.SEVERE, null, ex);
		}

	}

}