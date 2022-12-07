package model;

import controller.Pays;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Modelpays {
	 private static Bdd uneBdd = new Bdd("localhost", "ilios", "coumba", "mamemame");
	    public static void insertPays (Pays unPays)
	    {
	        String requete = "insert into pays values (null, '" + unPays.getNompays() + "');";
	        try
	        {
	            uneBdd.seConnecter();
	            Statement unStat = uneBdd.getMaConnexion().createStatement();
	            unStat.execute(requete);
	            unStat.close();
	            uneBdd.seDeconnecter();
	        }
	        catch (SQLException exp) {
	            System.out.println("Impossible d'executer la requete : " + requete);
	        }

	    }
	    public static ArrayList<Pays> selectAllPays ()
	    {
	        String requete = "select * from pays ;";
	        ArrayList<Pays> lesPays = new ArrayList<Pays>();
	        try
	        {
	            uneBdd.seConnecter();
	            Statement unStat = uneBdd.getMaConnexion().createStatement();
	            //extraction des pays
	            ResultSet lesResultats = unStat.executeQuery(requete);
	            while (lesResultats.next()) {
	                Pays unPays = new Pays(
	                        lesResultats.getInt("codepays"),
	                        lesResultats.getString("nompays")
	                );
	                //ajout du Pays
	                lesPays.add(unPays);
	            }
	            unStat.execute(requete);
	            unStat.close();
	            uneBdd.seDeconnecter();
	        }
	        catch (SQLException exp) {
	            System.out.println("Impossible d'executer la requete : " + requete);
	        }
	        return lesPays;
	    }
	    public static void deletePays(int codepays)
	    {
	        String requete = "delete from pays where codepays = " + codepays +";" ;

	        try {
	            uneBdd.seConnecter();
	            Statement unStat = uneBdd.getMaConnexion().createStatement();
	            unStat.execute(requete);
	            unStat.close();
	            uneBdd.seDeconnecter();
	        }
	        catch (SQLException exp)
	        {
	            System.out.println("Erreur execution requete : " + requete);
	        }
	    }
	    public static Pays selectWherePays (int codepays )
	    {
	        Pays unPays = null;
	        String requete = "select * from pays where codepays = '"+ codepays +"';" ;
	        try {
	            uneBdd.seConnecter();
	            Statement unStat = uneBdd.getMaConnexion().createStatement();
	            ResultSet unResultat = unStat.executeQuery(requete);
	            if (unResultat.next())
	            {
	                unPays = new Pays (
	                        unResultat.getInt("idpays"),
	                        unResultat.getString("nompays")
	                );}
	            unStat.close();
	            uneBdd.seDeconnecter();
	        }
	        catch (SQLException exp)
	        {
	            System.out.println("Erreur execution requete : " + requete);
	        }

	        return unPays;
	    }
	    public static void updatePays(Pays unPays)
	    {

	        String requete = "update pays  set nompays = '" + unPays.getNompays() + "'  where codepays = " + unPays.getCodepays() + ";";

	        try {
	            uneBdd.seConnecter();
	            Statement unStat = uneBdd.getMaConnexion().createStatement();
	            unStat.execute(requete);
	            unStat.close();
	            uneBdd.seDeconnecter();
	        }
	        catch (SQLException exp)
	        {
	            System.out.println("Erreur execution requete : " + requete);
	        }
	    }

}
