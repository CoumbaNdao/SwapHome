<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ page import="controller.*" %>
 <%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<title>Admin SwapHome</title>
</head>

<body>
<center>
<img alt="#" src="images/home.png" height="100" width="100">
	<br><br><br>
	<a href="admin.jsp?page=1">
	<img alt="#" src="images/home.png" height="50" width="50"></a>
	<a href="admin.jsp?page=2"><img alt="#" src="images/pays.png" height="50" width="50"></a>
	<a href="admin.jsp?page=3"><img alt="#" src="images/logement.png" height="50" width="50"></a>
	<a href="admin.jsp?page=4"><img alt="#" src="images/localite.png" height="50" width="50"></a>
	<a href="#"><img alt="#" src="images/deconnexion.png" height="50" width="50"></a>
	
	<%
		int pages=1;
		if(request.getParameter("page") != null){
			pages = Integer.parseInt(request.getParameter("page"));
		} else {
			pages=1;
		}
		switch (pages){
		case 1 : %> <%@ include file="homeadmin.jsp" %> <% break;
		case 2 : %> <%@ include file="pays.jsp" %> <% break;
		case 3 : %> <%@ include file="logement.jsp" %> <% break;
		case 4 : %> <%@ include file="localite.jsp" %> <% break;
		case 5 : break;
		}
	%>
</center>
</body>
</html>