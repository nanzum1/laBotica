<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% System.out.println("ListarUsuarios JSP encontrado"); %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--   Iconos de footer -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>La Botica</title>
<link rel="stylesheet" href="../resources/Estilos.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
	<!--            Navbar          -->
	<nav>
		<%@include file="../FIJOS/NavBar.jsp"%>
	</nav>

	<div class="container">
		<legend class="text-center header">Listar Usuarios</legend>
		<div class="btn-group mb-3" role="group" aria-label="Filtros">
			<a href="../usuarios/listarUsuarios" class="btn btn-light">Todos</a>
			<a href="../usuarios/listarUsuarios?filtro=clientes" class="btn btn-light">Cliente</a>
			<a href="../usuarios/listarUsuarios?filtro=administrativos" class="btn btn-light">Administrativos</a>
		</div>
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID Usuario</th>
						<th>Username</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Fecha Nacimiento</th>
						<th>Clave</th>
						<th>RUN</th>
						<th>ID Administrativo</th>
						<th>Área</th>
						<th>ID Cliente</th>
						<th>Teléfono</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${filtro == 'todos' || filtro == null}">
							<c:forEach var="usuario" items="${usuarios}">
								<tr>
									<td>${usuario.idUsuario}</td>
									<td>${usuario.username}</td>
									<td>${usuario.nombre}</td>
									<td>${usuario.apellido}</td>
									<td>${usuario.fechaNacimiento}</td>
									<td>${usuario.clave}</td>
									<td>${usuario.run}</td>
									<c:choose>
										<c:when
											test="${usuario.getClass().getName().equals('ProyectoFinal.laBotica.modelo.Administrativo')}">
											<td>${usuario.idAdmin}</td>
											<td>${usuario.area}</td>
											<td></td>
											<td></td>
											<td></td>
										</c:when>
										<c:when
											test="${usuario.getClass().getName().equals('ProyectoFinal.laBotica.modelo.Cliente')}">
											<td></td>
											<td></td>
											<td>${usuario.idCliente}</td>
											<td>${usuario.telefono}</td>
											<td>${usuario.email}</td>
										</c:when>
										<c:otherwise>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</c:when>
						<c:when test="${filtro == 'administrativos'}">
							<c:forEach var="usuario" items="${usuarios}">
								<tr>
									<td>${usuario.idUsuario}</td>
									<td>${usuario.username}</td>
									<td>${usuario.nombre}</td>
									<td>${usuario.apellido}</td>
									<td>${usuario.fechaNacimiento}</td>
									<td>${usuario.clave}</td>
									<td>${usuario.run}</td>
									<td>${usuario.idAdmin}</td>
									<td>${usuario.area}</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:when test="${filtro == 'clientes'}">
							<c:forEach var="usuario" items="${usuarios}">
								<tr>
									<td>${usuario.idUsuario}</td>
									<td>${usuario.username}</td>
									<td>${usuario.nombre}</td>
									<td>${usuario.apellido}</td>
									<td>${usuario.fechaNacimiento}</td>
									<td>${usuario.clave}</td>
									<td>${usuario.run}</td>
									<td></td>
									<td></td>
									<td>${usuario.idCliente}</td>
									<td>${usuario.telefono}</td>
									<td>${usuario.email}</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
	<!------------------ Footer ----------------->

	<footer>
		<%@include file="../FIJOS/Footer.jsp"%>
	</footer>

	<script src="../resources/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
		integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
		integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
		crossorigin="anonymous"></script>
</body>
</html>