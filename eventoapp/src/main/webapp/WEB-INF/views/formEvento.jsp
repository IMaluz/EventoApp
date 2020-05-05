<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FunForU - Cadastre Um Evento</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<header>
		<nav>
			<div class="nav-wrapper">
				<a href="#" class="brand-logo">Cadastrar Eventos</a>
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
		<form class="container" method="post">
		Nome: <input type="text" value="" name="nome" required />
		<div class="row">
			<div class="input-field col s6">
				Local: <input type="text" value="" name="local" required />
			</div>
			<div class="input-field col s3">
				Data: <input type="date" value="" name="data" required />
			</div>
			<div class="input-field col s3">
				Horário: <input type="time" value="" name="horario" required />
			</div>
		</div>
		<button class="waves-effect waves-light btn" type="submit">Salvar</button>

	</form>
</body>
</html>