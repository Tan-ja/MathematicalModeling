package cn.lanqiao.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;

import cn.lanqiao.entity.PushByEmail;
import cn.lanqiao.util.SendmailUtil;

public class EmailTest {
	public static void main(String[] args) {
//		new EmailTest().new SendMatchInfoToUserThread().start();
		new EmailTest().exportParticipant();
	}
	private void exportParticipant() {
		Connection connection = null;
		PreparedStatement ps = null;
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/methematicalmodeling";
		String userName = "root";
		String password = "TJW199606";
		try {
			Class.forName(driverName);
			connection = DriverManager.getConnection(url, userName, password);
			String sql = "select * from user";
			ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String email = rs.getString("uemail");
				System.out.println(email);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		spring.datasource.url=jdbc:mysql://localhost:3306/methematicalmodeling?useUnicode=true&characterEncoding=utf8
//			spring.datasource.username=root
//			spring.datasource.password=TJW199606
//			spring.datasource.driver-class-name=com.mysql.jdbc.Driver
	}
}
