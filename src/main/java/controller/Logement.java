package controller;

public class Logement {
	private int idlogement;
	private String libellelogement, description, caracteristique, animeaux, enfant, adresse, cplogement, villelogement, atoutslogement, disponibilite;
	private float superficie; 
	private int codelocalite, codetypelogement, iduser;
	public Logement(int idlogement, String libellelogement, String description, String caracteristique, String animeaux,
			String enfant, String adresse, String cplogement, String villelogement, String atoutslogement,
			String disponibilite, float superficie, int codelocalite, int codetypelogement, int iduser) {
		super();
		this.idlogement = idlogement;
		this.libellelogement = libellelogement;
		this.description = description;
		this.caracteristique = caracteristique;
		this.animeaux = animeaux;
		this.enfant = enfant;
		this.adresse = adresse;
		this.cplogement = cplogement;
		this.villelogement = villelogement;
		this.atoutslogement = atoutslogement;
		this.disponibilite = disponibilite;
		this.superficie = superficie;
		this.codelocalite = codelocalite;
		this.codetypelogement = codetypelogement;
		this.iduser = iduser;
	}
	public int getIdlogement() {
		return idlogement;
	}
	public void setIdlogement(int idlogement) {
		this.idlogement = idlogement;
	}
	public String getLibellelogement() {
		return libellelogement;
	}
	public void setLibellelogement(String libellelogement) {
		this.libellelogement = libellelogement;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCaracteristique() {
		return caracteristique;
	}
	public void setCaracteristique(String caracteristique) {
		this.caracteristique = caracteristique;
	}
	public String getAnimeaux() {
		return animeaux;
	}
	public void setAnimeaux(String animeaux) {
		this.animeaux = animeaux;
	}
	public String getEnfant() {
		return enfant;
	}
	public void setEnfant(String enfant) {
		this.enfant = enfant;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getCplogement() {
		return cplogement;
	}
	public void setCplogement(String cplogement) {
		this.cplogement = cplogement;
	}
	public String getVillelogement() {
		return villelogement;
	}
	public void setVillelogement(String villelogement) {
		this.villelogement = villelogement;
	}
	public String getAtoutslogement() {
		return atoutslogement;
	}
	public void setAtoutslogement(String atoutslogement) {
		this.atoutslogement = atoutslogement;
	}
	public String getDisponibilite() {
		return disponibilite;
	}
	public void setDisponibilite(String disponibilite) {
		this.disponibilite = disponibilite;
	}
	public float getSuperficie() {
		return superficie;
	}
	public void setSuperficie(float superficie) {
		this.superficie = superficie;
	}
	public int getCodelocalite() {
		return codelocalite;
	}
	public void setCodelocalite(int codelocalite) {
		this.codelocalite = codelocalite;
	}
	public int getCodetypelogement() {
		return codetypelogement;
	}
	public void setCodetypelogement(int codetypelogement) {
		this.codetypelogement = codetypelogement;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	

}
