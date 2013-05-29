package handler;

import main.Araclar;

public class test {
	public static void main(String[] args) {
		AraclarHandler a = new AraclarHandler();
		for (Araclar ar : a.AraclariGetir()) {
			System.out.println(ar.getMarka());
		}
	}
}
