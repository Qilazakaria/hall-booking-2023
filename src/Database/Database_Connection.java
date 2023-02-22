package Database;

import java.sql.*;

public class Database_Connection {
	private static Connection connect;
	
	private static final String DB_DRIVER = "org.postgresql.Driver";
	private static final String DB_CONNECTION = "jdbc:postgresql://ec2-52-71-69-66.compute-1.amazonaws.com:5432/d9l7lvmkdps1vc";
	private static final String DB_USERNAME = "cyjarvvduwngrv";
	private static final String DB_PASSWORD = "5741b3fdb3f8b805dd919e050a47b5292a5ce498da1a757e9f11dabaa7dfb5d4";
	
	public static Connection getConnection() {
		try {
			Class.forName(DB_DRIVER);
			try {
				connect = DriverManager.getConnection(DB_CONNECTION, DB_USERNAME, DB_PASSWORD);
				System.out.println("Connection Success");
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connect;
	}
}