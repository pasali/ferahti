package handler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class KiradaHandler {
	
	static final String URL = "jdbc:mysql://localhost/ferahti";
	static final String USER = "root";
	static final String PASS = "4ty9";
	private Connection  conn;
	private Statement stmt;
	private ResultSet rs;
	
	public void KiraAl(String uye, String arac) {
		String sorgu = "INSERT INTO ferahti.kirada (iduyeler, idarac) VALUES ('" + uye + "', '" + arac + "')";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			stmt = conn.createStatement();
			stmt.executeUpdate(sorgu);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
