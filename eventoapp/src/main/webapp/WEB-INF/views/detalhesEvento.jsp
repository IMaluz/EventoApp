<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FunForU - Detalhes</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href='<spring:url value="/style/styleCss.css"/>'  rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<header>
		<nav>
			<div class="nav-wrapper">
				<a href="#" class="brand-logo">Evento</a>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a href="/" class="waves-effect waves-light btn"><i
							class="material-icons left">home</i>Página Inicial</a></li>
				</ul>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a href="/eventos" class="waves-effect waves-light btn"><i
							class="material-icons left">format_list_bulleted</i>Lista de
							Eventos</a></li>
				</ul>
				
			</div>
		</nav>
	</header>
	<pre>
	
	</pre>
	<center>
		<div c:forEach var="evento" items="${evento}" class="container">
			<div class="row">
				<p>
					<b>Nome:</b> ${evento.nome}
				</p>
				<p>
					<b>Local:</b> ${evento.local}
				</p>
				<p>
					<b>Data:</b> ${evento.data}
				</p>
				<p>
					<b>Horário:</b> ${evento.horario}
				</p>
			</div>
			</div>
	</center>

	<div class="container">
		<form method="post" object=${convidados}>
			Nome:<input type="text" value="" placeholder="Nome Completo"
				name="nomeConvidado" required /> RG:<input type="text" value=""
				placeholder="00.000.000-00" name="rg" required />
			<button class="waves-effect waves-light btn" type="submit">Adicionar</button>
		</form>
	</div>
	<pre>


</pre>
	<table class="container">
		<thead>
			<tr>
				<th>Nome Convidado</th>
				<th>RG</th>
				<th>Ação</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="convidado" items="${convidados}">
				<td>${convidado.nomeConvidado}</td>
				<td>${convidado.rg}</td>
				<td><a class="waves-effect waves-light btn-small"
						href="<c:url value='/deletarConvidado/${convidado.rg}'/>"><i
							class="material-icons center">delete</i></a></td>
		</tbody>
		</c:forEach>
	</table>
</body>
</html>