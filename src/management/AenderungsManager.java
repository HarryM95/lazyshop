package management;
import java.util.ArrayList;

import data.Buchung;

public class AenderungsManager {
	
	public ArrayList<Buchung> getBuchung(int kid) throws Exception {
		ArrayList<Buchung> ab = new ArrayList<Buchung>();
		Buchung b1 = new Buchung(1,null,"in Bearbeitung","noob",20.0,"Währingerstr. 29");
		Buchung b2 = new Buchung(2,null,"Fertig","noob2",25.0,"Währingerstr. 29");
		
		ab.add(b1);
		ab.add(b2);
		return ab;
		//DatabaseManager databaseManager = new DatabaseManager();
		//ArrayList<Buchung> buchList = databaseManager.getBuchungbyUser(kid);
		//return buchList;
	}
	
	public void aenderAdresse(int kid, String adresse) {
		System.out.println("Hallo");
		//DatabaseManager databaseManager = new DatabaseManager();
		//db.aenderAdd(kid, adresse);
	}
	
	public void buchungAbsagen(int buchid, int kid) {
		System.out.println("Hallo2");
		//DatabaseManager databaseManager = new DatabaseManager();
		//db.absagen(buchid, kid);
	}
}
