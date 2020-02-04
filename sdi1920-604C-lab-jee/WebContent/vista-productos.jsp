<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="com.uniovi.sdi.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Productos</h1>
	<div class="row ">
		<c:forEach var="producto" begin="0"
			items="${productos}">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div>
					<img src="<c:out value="${producto.imagen}"/>" />
					<div>
						<c:out value="${producto.nombre}" />
					</div>
					<a
						href="incluirEnCarrito?producto=<c:out value="${producto.nombre}"/>"
						class="btn btn-default"> <c:out value="${producto.precio}" />
						€
					</a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>