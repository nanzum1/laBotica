<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--   Iconos de footer -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Registro</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/Estilos.css">
<!-- iconos -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<body id="bodyregistro">
	<!-- jsp:include Trae al Navbar -->
	<nav>
		<%@include file="FIJOS/NavBar.jsp"%>
	</nav>

	<!-- Formulario Registro -->

	<div class="container" style="min-height: 80vh; padding-top: 50px;">
		<h1>Formulario de Registro</h1>
		<form class="row g-3 d-flex align-items-center" action="registro">
			<div class="col-md-4">
				<label for="validationDefault01" class="form-label">Id</label> <input
					type="text" class="form-control" name="idusuario"
					id="validationDefault01" value="" required>
			</div>
			<div class="col-md-4">
				<label for="validationDefault01" class="form-label">Nombre</label> <input
					type="text" class="form-control" name="username"
					id="validationDefault01" value="" required>
			</div>
			<div class="col-md-4">
				<label for="validationDefault02" class="form-label">Password</label>
				<input type="text" class="form-control" name="password"
					id="validationDefault02" value="" required>
			</div>
			<div class="col-md-4">
				<label for="validationDefaultUsername" class="form-label">Email</label>
				<input type="text" class="form-control" name="email"
					id="validationDefault02" value="" required>
				<div class="input-group">
					<span class="input-group-text" id="inputGroupPrepend2">@</span> <input
						type="text" class="form-control" id="validationDefaultUsername"
						aria-describedby="inputGroupPrepend2" required>
				</div>
			</div>
			<div class="col-12">
				<button class="btn btn-primary" type="submit">Registrar</button>
			</div>
		</form>
	</div>
	<br>
	<!-- Footer -->
	<footer>
		<%@include file="FIJOS/Footer.jsp"%>
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