package handler;

import java.sql.*;


public class UyelerHandler {
	
	static final String URL = "jdbc:mysql://localhost/ferahti";
	static final String USER = "root";
	static final String PASS = "4ty9";
	private Connection  conn;
	private Statement stmt;
	private ResultSet rs;
	
	
	
	public int UyeKayitlimi(String email, String sifre) {
		String sorgu = "select email,sifre from uyeler where email = '"+ email + "' and sifre = '"+ sifre + "'";
		int sayac = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sorgu);
			while (rs.next()) {
				sayac++;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sayac;
	}

	public void UyeKayit(String email, String sifre) {
		String sorgu = "INSERT INTO ferahti.uyeler (email, sifre) VALUES ('" + email + "', '" + sifre + "')";
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
