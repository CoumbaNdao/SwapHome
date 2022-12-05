<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion des pays</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
  <div class="container text-center">
  <hr>
  <div class="row d-flex justify-content-center mb-5 mt-5">
  </div>
  <div class="row d-flex justify-content-center mb-5 mt-5">
    <h3>Ajout d'un nouveau Pays</h3>
    <table class="table col-12 table-striped table-info">
     
      <tbody>
      <form method="post">
        <tr>

          <td> Nom du pays </td>
           <td><input 
           type="text" 
           name="nompays" 
           value='<%= (lePays!=null)?lePays.getNompays() : "" %>'
           class="form-control">
          </td>
          </tr>
          
          <tr>
          <td>
            <input 
            type="reset" 
            name="Annuler" value="Annuler" 
            class="btn btn-danger">
           </td>
            <td>
            <input type="submit"
             <%= (lePays!=null)? "name='Modifier' value='Modifier'" : 
			 "name = 'Valider' value='Valider'" %> class="btn btn-success">
          </td>
        </tr>
        <%= (lePays!=null)? "<input type='hidden' name='codepays' value='"+lePays.getCodepays()+"'> ":""%>
      </form>
      </tbody>
    </table>
  </div>
</div>

</body>
</html>