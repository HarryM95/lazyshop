package data;

import java.sql.Date;

public class Buchung {

	private int buchid;
	private Date datum;
	private String status;
	private String stil;
	private double preis;
	private String adresse;


	public Buchung(int buchid, Date datum, String status, String stil, double preis, String adresse) {
		super();
		this.buchid = buchid;
		this.datum = datum;
		this.status = status;
		this.stil = stil;
		this.preis = preis;
		this.adresse = adresse;
	}


	public int getBuchid() {
		return buchid;
	}


	public void setBuchid(int buchid) {
		this.buchid = buchid;
	}


	public Date getDatum() {
		return datum;
	}


	public void setDatum(Date datum) {
		this.datum = datum;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getStil() {
		return stil;
	}


	public void setStil(String stil) {
		this.stil = stil;
	}


	public double getPreis() {
		return preis;
	}


	public void setPreis(double preis) {
		this.preis = preis;
	}


	public String getAdresse() {
		return adresse;
	}


	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

}
