package main;

public class Araclar {
	private int id;
	private String marka;
	private String kullanici;
	private String plaka;
	private String durum;
	
	public Araclar() {
		
	}

	public Araclar(int id, String marka, String kullanici, String plaka, String durum ) {
		this.id = id;
		this.marka = marka;
		this.setKullanici(kullanici);
		this.plaka = plaka;
		this.durum = durum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMarka() {
		return marka;
	}

	public void setMarka(String marka) {
		this.marka = marka;
	}

	public String getDurum() {
		return durum;
	}

	public void setDurum(String durum) {
		this.durum = durum;
	}

	public String getPlaka() {
		return plaka;
	}

	public void setPlaka(String plaka) {
		this.plaka = plaka;
	}

	public String getKullanici() {
		return kullanici;
	}

	public void setKullanici(String kullanici) {
		this.kullanici = kullanici;
	}
	
	
}
