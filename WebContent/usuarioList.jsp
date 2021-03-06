<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html >
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Food Finder</title>

    <link href="/acheComida/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/acheComida/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="/acheComida//css/app.css" rel="stylesheet">
    
</head>

<body>
<c:import url="topo.jsp"></c:import>
<div class="container">
<div class="page-header">
<h1> Lista de Usuarios </h1>
</div>

<table class="table" >
<tr>

<th> Nome </th>
<th> Email </th>
<th> Telefone </th>
<th> Excluir Usuario </th>
</tr>

<c:forEach var="e" items="${lista}">
<tr>

 <td> <a href="/acheComida/usuarios?q=editar&id=${e.id}">${e.nome} </a></td>
 <td> ${e.email} </td> 
 <td> ${e.telefone} </td>
 
 <td> <a href="/acheComida/usuarios?q=excluir&id=${e.id}"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> </td>
 
 
<tr>
</c:forEach>
</table>
</div>

<c:import url="rodape.jsp"></c:import>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="/acheComida/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>