package controller;

public class Localite {
	private int codelocalite;
	private String nomlocalite;
	private int codepays;
	public Localite(int codelocalite, String nomlocalite, int codepays) {
		super();
		this.codelocalite = codelocalite;
		this.nomlocalite = nomlocalite;
		this.codepays = codepays;
	}
	public int getCodelocalite() {
		return codelocalite;
	}
	public void setCodelocalite(int codelocalite) {
		this.codelocalite = codelocalite;
	}
	public String getNomlocalite() {
		return nomlocalite;
	}
	public void setNomlocalite(String nomlocalite) {
		this.nomlocalite = nomlocalite;
	}
	public int getCodepays() {
		return codepays;
	}
	public void setCodepays(int codepays) {
		this.codepays = codepays;
	}
	

}
