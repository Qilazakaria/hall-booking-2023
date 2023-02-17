package Database;

import java.sql.*;

public class Database_Connection {
	private static Connection connect;
	
	private static final String DB_DRIVER = "org.postgresql.Driver";
	private static final String DB_CONNECTION = "jdbc:postgresql://ec2-34-194-73-236.compute-1.amazonaws.com:5432/dh6jb4b8j0cp6";
	private static final String DB_USERNAME = "pasbivpbrzrvtt";
	private static final String DB_PASSWORD = "3ca4c3f0167b8137b7bf38383ee29075f8df3b5c7e87a6cfc1859391d7ff89bd";
	
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