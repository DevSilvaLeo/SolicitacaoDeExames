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
	  <h2>Cadastro de nova solicita��o</h2>
	  <form action="/solicitacao/incluir" method="post">
	    <div class="mb-3 mt-3">
	      <label>Data da Solicita��o:</label>
	      <input type="date" class="form-control" placeholder="Informe a data da solicita��o" name="data-solicitacao">
	    </div>

	    <div class="mb-3 mt-3">
	      <label>M�dico:</label>
	      <input type="text" class="form-control" placeholder="Informe o nome do M�dico" name="medico">
	    </div>

	    <div class="mb-3 mt-3">
	      <label>Paciente:</label>
	      <input type="text" class="form-control" placeholder="Informe o nome do Paciente" name="paciente">
	    </div>

	    <button type="submit" class="btn btn-primary">Cadastrar</button>
	  </form>
	</div>
</body>
</html>