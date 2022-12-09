<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 
<%@ page import ="controller.*, java.util.*" %>

<h1>Gestion des Pays</h1>
<% 
	Pays lePays = null;
	if (request.getParameter("action") != null && request.getParameter("codepays") != null)
	{
		String action = request.getParameter("action");
		int codepays = Integer.parseInt(request.getParameter("codepays"));
		switch (action) {
		case "sup" : Controller.deletePays(codepays); break;
		case "edit" : lePays = Controller.selectWherePays(codepays);
		
		break;
		}
		
	}
%>


<% 

 if(request.getParameter("Valider") != null)
 {
 	String nompays = request.getParameter("nompays");
 	
 	Pays unPays = new Pays(nompays);
 	
 	Controller.insertPays(unPays);
 	out.print("<br> Insertion réussie");
 }

if (request.getParameter("Modifier") != null)
{
	String nompays = request.getParameter("nompays"); 
 
	int codepays = Integer.parseInt( request.getParameter("codepays"));
//On instancie la classe Pays unPays
	Pays unPays = new Pays (codepays, nompays); 
//appel du controleur pour execute l'insertion
	Controller.updatePays(unPays);
	out.print("<br /> Modification réussie"); 
	response.sendRedirect("admin.jsp?page=2");
}

	ArrayList<Pays> lesPays = Controller.selectAllPays(); 
 %>
 
<%@ include file="views/viewInsertPays.jsp"  %> 

 <%@ include file="views/viewLesPays.jsp" %> 