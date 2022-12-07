package controller;

public class Typelogement {
	private int codetypelogement;
	private String libelletypelogement;
	public Typelogement(int codetypelogement, String libelletypelogement) {
		super();
		this.codetypelogement = codetypelogement;
		this.libelletypelogement = libelletypelogement;
	}
	public int getCodetypelogement() {
		return codetypelogement;
	}
	public void setCodetypelogement(int codetypelogement) {
		this.codetypelogement = codetypelogement;
	}
	public String getLibelletypelogement() {
		return libelletypelogement;
	}
	public void setLibelletypelogement(String libelletypelogement) {
		this.libelletypelogement = libelletypelogement;
	}
	

}
