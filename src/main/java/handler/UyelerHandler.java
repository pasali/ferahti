package handler;

import java.sql.*;
import java.sql.PreparedStatement;

public class UyelerHandler {
	static final String URL = "8";
	static final String USER = "";
	static final String PASS = "";
	private Connection  conn;
	private Statement stmt;
	private ResultSet rs;
	
	
	
	public int UyeKayitlimi(String email, String sifre) {
		String sorgu = "select email,sifre from ferahti.uyeler where email = '"+ email + "' and sifre = '"+ sifre + "'";
		int sayac = 0;
		try {
			Class.forName("org.postgresql.Driver");
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

	public void UyeKayit(String email, String sifre, String ad, String soyad) {
		String sorgu = "INSERT INTO ferahti.uyeler (email, sifre, ad, soyad) VALUES ('" + email + "', '" + sifre + "', '" + ad + "', '" + soyad + "')";
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			stmt = conn.createStatement();
			stmt.executeUpdate(sorgu);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
