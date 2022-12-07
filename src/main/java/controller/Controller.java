package controller;

import model.Modelpays;

import java.util.ArrayList;

public class Controller {
    public static void insertPays (Pays unPays)
    {
        //On teste la validité des données

        //On appelle le Model pour l'insertion
        Modelpays.insertPays(unPays);
    }

    public static ArrayList<Pays> selectAllPays(){
        return Modelpays.selectAllPays();
    }

    public static Pays selectWherePays(int codepays){
        return Modelpays.selectWherePays(codepays);
    }

    public static void deletePays (int codepays)
    {
        //On teste la validité des données

        //On appelle le Model pour l'insertion
        Modelpays.deletePays(codepays);
    }

    public static void updatePays (Pays unPays)
    {
        //On teste la validité des données

        //On appelle le Model pour l'insertion
        Modelpays.updatePays(unPays);
    }

}
