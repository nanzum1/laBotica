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
<body>
	<%@include file="FIJOS/NavBar.jsp"%>

	<main>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"></h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">

						<div class="row">
							<h3 class="text-center">Recordatorio</h3>
							<ol class="list-group list-group-numbered">
								<li class="list-group-item">Recordatorio1</li>
								<li class="list-group-item">Recordatorio2</li>
								<li class="list-group-item">Recordatorio3</li>
							</ol>
						</div>
<br>	
<br>
						<div class="row">
							<h3 class="text-center">Alertas</h3>
							<ol class="list-group list-group-numbered">
								<li class="list-group-item">Alerta de Stock</li>
								<li class="list-group-item">Alerta de Llamado</li>
								<li class="list-group-item">Alerta de Inventario</li>
							</ol>

						</div>
<br>	
<br>				
						<div class="row">
							<h3 class="text-center">Ventas</h3>
							<ol class="list-group list-group-numbered">
								<li class="list-group-item">Ventas Diarias</li>
								<li class="list-group-item">Venta Semanal</li>
								<li class="list-group-item">Venta Mensual</li>
							</ol>

						</div>
					</div>
				</div>
			</div>
		</div>

	</main>

	<br>
	<br>
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
