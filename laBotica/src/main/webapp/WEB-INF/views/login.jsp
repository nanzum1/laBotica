<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="resources/Estilos.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<!-- iconos -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<body id="bodyregistro">
	<!-- jsp:include Trae al Navbar -->
	<nav>
		<%@include file="FIJOS/NavBar.jsp"%>
	</nav>

	<!-- Formulario Login -->

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 text-center mb-5">
				<h2 class="heading-section"></h2>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-5">
				<div class="login-wrap p-4 p-md-5">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="fa fa-user-o"></span>
					</div>
					<h3 class="text-center mb-4">Inicia Sesion</h3>
					<form action="login" method="POST">
						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="nombre">Usuario:</label> <input
								type="text" class="form-control" id="nombre" name="username"
								placeholder="Introduce tu nombre de usuario">
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="contrasenia">Contraseña</label> <input
								type="password" class="form-control" id="contrasenia"
								name="pass" placeholder="Introduce tu contraseña">
						</div>

						<!-- 2 column grid layout for inline styling -->
						<div class="row mb-4">
							<div class="col d-flex justify-content-center">

						</div>

						<!-- Submit button -->
						<button type="submit" class="btn btn-success btn-block">Iniciar sesión</button>

						<!-- Register buttons -->
						<div class="text-center">
							<p>
								¿Quieres crear una cuenta? <a href="#!">Registrate</a>
							</p>


						</div>
					</form>
				</div>
			</div>
		</div>
	</div>



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


