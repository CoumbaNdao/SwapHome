package controller;

import model.Model;

import java.util.ArrayList;

public class Controller {
    public static void insertPays (Pays unPays)
    {
        //On teste la validité des données

        //On appelle le Model pour l'insertion
        Model.insertPays(unPays);
    }

    public static ArrayList<Pays> selectAllPays(){
        return Model.selectAllPays();
    }

    public static Pays selectWherePays(int codepays){
        return Model.selectWherePays(codepays);
    }

    public static void deletePays (int codepays)
    {
        //On teste la validité des données

        //On appelle le Model pour l'insertion
        Model.deletePays(codepays);
    }

    public static void updatePays (Pays unPays)
    {
        //On teste la validité des données

        //On appelle le Model pour l'insertion
        Model.updatePays(unPays);
    }

}
