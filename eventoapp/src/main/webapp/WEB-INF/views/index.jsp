<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FunForU - Lista De Eventos</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="style/styleCss.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<header>
		<nav>
			<div class="nav-wrapper">
				<a href="#" class="brand-logo">Lista de Eventos</a>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a href="/" class="waves-effect waves-light btn"><i
							class="material-icons left">home</i>Página Inicial</a></li>
				</ul>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a href="/cadastrarEvento"
						class="waves-effect waves-light btn"><i
							class="material-icons left">add_circle_outline </i>Cadastrar
							Evento</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<table class="container">
		<p>
		</p>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Local</th>
				<th>Data</th>
				<th>Horário</th>
				<th>Ação</th>
			</tr>
		</thead>

		<tbody>

			<c:forEach var="evento" items="${eventos}">

				<tr>
					<td><a href="<c:url value='/${evento.codigo}'/>">${evento.nome}</a></td>
					<td>${evento.local}</td>
					<td>${evento.data}</td>
					<td>${evento.horario}</td>
					<td><a class="waves-effect waves-light btn-small"
						href="<c:url value='/deletarEvento/${evento.codigo}'/>"><i
							class="material-icons center">delete</i></a></td>
				</tr>

			</c:forEach>

		</tbody>
	</table>

</body>
</html>