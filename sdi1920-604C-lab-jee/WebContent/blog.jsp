<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="com.uniovi.sdi.blog.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>JSP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.addScroll {
	overflow-y: auto;
	height: 330px;
}
</style>
</head>
<body>
	<!-- Comentarios -->
	<h1>Comentarios</h1>
	<a href="blog"><img src="/sdi1920-604C-lab-jee/img/refresh.png"></a>
	<div class="addScroll">
		<c:forEach var="comentario" begin="0" items="${comentarios}">
			<div class="panel panel-default">
				<div class="panel-heading">
					<c:out value="${comentario.usuario}"></c:out>
				</div>
				<div class="panel-body">
					<c:out value="${comentario.texto}"></c:out>
				</div>
			</div>
		</c:forEach>
	</div>

	<!-- Añadir comentario -->
	<h2>Añade tu comentario</h2>
	<form class="form-horizontal" method="post" action="blog">
		<div class="form-group">
			<label class="control-label col-sm-2" for="nombre">Nombre:</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="nombre"
					required="true" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="comentario">Comentario:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="comentario"
					required="true" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-primary">Agregar</button>
			</div>
		</div>
	</form>
</body>
</html>