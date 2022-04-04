<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exames APP</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-3">
	  <h2>Solicta��o de Exame</h2>
	  <form action="/solicitacao" method="get">
	    <button type="submit" class="btn btn-primary">Nova solicita��o</button>
	  </form>
	  
	  <c:if test="${not empty listagem}">
	 	  <p>Lista de solicita��es (${listagem.size()}):</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>ID</th>
		        <th>Nome</th>
		        <th>Data de Solicita��o</th>
		        <th>M�dico</th>
		        <th>Paciente</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach var="o" items="${listagem}">	
			      <tr>
			      	<td>${o.CodSolicitacao}</td>
			        <td>${o.DataSolicitacao}</td>
			        <td>${o.NomeMedico}</td>
			        <td>${o.Paciente.Nome}</td>
			        <td><a href="/bebida/${o.id}/excluir">excluir</a></td>
			      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
	  </c:if>
	  	
 	  <c:if test="${empty listagem}">
 	  	<p>N�o existem solicita��es!!!</p>
 	  </c:if> 	              
	</div>
</body>
</html>