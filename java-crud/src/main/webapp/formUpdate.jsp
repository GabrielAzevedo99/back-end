<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Sonho nas alturas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Clientes</a>
        </li>
        
        
      </ul>
      <form action="CreateAndFind" method="GET" class="d-flex">
        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Digite nome ou cpf" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Buscar</button>
      </form>
    </div>
  </div>
</nav>
<div class="container">
<div class="row">
<hr>
<h3>Atualizar dados</h3>
<hr>
<form action="clienteUptade" method="POST">
<imput value="${cliente.id}" name="id" style="visibility:hidden">

<div class="form-floating mb-3">
						<input value="${cliente.nome}" name="nome" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
						<label>Nome completo</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.cpf}" name="cpf" maxlength="11" type="text" class="form-control"> 
						<label>CPF(apenas n�meros)</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.nascimento}" name="nascimento" type="date" class="form-control" placeholder="Nascimento">
						<label>Nascimento</label>
					</div>
					<select name="situacao" class="form-select mb-3" aria-label="Exemplo de sele��o padr�o">
						<option value="Inativo" selected>--selecione uma op��o</option>
						<option value="Ativo">Ativo</option>
						<option value="Inativo">Inativo</option>
					</select>

					<button class=" btn btn-sucess" type="submit" >alterar </button>
					<button class ="btn btn-secondary" type="reset" >Limpar</button>
					</form>
					
	<br>		


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>