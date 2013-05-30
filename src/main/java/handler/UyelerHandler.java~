package handler;

import java.sql.*;
import java.sql.PreparedStatement;

public class UyelerHandler {
	static final String URL = "jdbc:postgresql://ec2-23-21-129-125.compute-1.amazonaws.com/d70stbr7v9732u?useUnicode=true&characterEncoding=UTF-8";
	static final String USER = "jfcawhlrrysslo";
	static final String PASS = "pce7oasKqyHunqIDF_ajTL1_UR";
	private Connection  conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	
	
	public int UyeKayitlimi(String email, String sifre) {
		String sorgu = "select email,sifre from uyeler where email = '"+ email + "' and sifre = '"+ sifre + "'";
		int sayac = 0;
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			stmt = conn.preparedStatement();
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
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			stmt = conn.preparedStatement();
			stmt.executeUpdate(sorgu);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
