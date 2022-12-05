<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des pays</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
  <div class="container text-center">
  <hr>
  <div class="row d-flex justify-content-center mb-5 mt-5">
  </div>
  <div class="row d-flex justify-content-center mb-5 mt-5">
	<h1>Liste des Pays</h1>
	<table class="table col-12 table-striped table-info">
	 <thead>
      
		<tr>
		<td>Code Pays</td>
		<td>Nom Pays</td>
		<td>Opération </td>
		</tr>
		 </thead>
      <tbody>
		
		<%
			String chaine = "";
		for (Pays unPays : lesPays)
		{ 
			chaine += "<tr> <td>"+unPays.getCodepays()+"</td>";
			chaine += "<td>"+unPays.getNompays()+"</td>";
			
			chaine += "<td>";
			chaine += "<a href='admin.jsp?page=2&action=edit&codepays="+unPays.getCodepays()+"'>";
			chaine += "<img src='images/modifier.png' height ='20px' width ='20px'></a>";
			
			chaine += "<a href='admin.jsp?page=2&action=sup&codepays="+unPays.getCodepays()+"'>";
			chaine += "<img src='images/supprimer.png' height ='20px' width ='20px'</a>";
			
			chaine += "</td>";
			chaine += "</tr>";
		}
		out.print(chaine);
		%>
		 </tbody>
	</table>
	</div>
</div>

</body>
</html>