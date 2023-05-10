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
<title>Bodegando</title>
<link rel="stylesheet" href="resources/Estilos.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

</head>
<body>
	<jsp:include page="FIJOS/NavBar.jsp"></jsp:include>
	<div id="conteiner col-lg-3 col-md-4 col-6">

		<legend class="text-center header">Cotizador</legend>
		<div class="clearfix"></div>
		<legend class="text-center header">Busqueda por Distribuidor</legend>
		<div class="container col-md-12">
			<div class="row col-12">
				<div class="container col-12">
					<img src="resources/img/Distribuidora1.jfif" alt="Distribuidora1" />
					<img src="resources/img/Distribuidora2.jfif" alt="Distribuidora2" />
				</div>
				<div class="form-group">
					<div class="col-md-12 text-center">
						<button id="boton-ver" class="btn btn-danger">
							<a href="carrito.html"> Ver mas </a>
						</button>
					</div>
				</div>
			</div>
		</div>
		<br />
		<br />


		<legend class="text-center header">Busqueda por Producto</legend>
		<div class="container col-md-12">
			<div class="row">
				<div class="img-cotizador">
					<img src="resources/img/Coca-2L.jpg" alt="Tula" /> <img
						src="resources/img/fruna.jfif" alt="Fruna" /> <img
						src="resources/img/kombucha.jfif" alt="Kombucha" />
				</div>
				<div class="form-group">
					<div class="col-md-12 text-right">
						<button id="boton-ver" class="btn btn-danger">
							<a href="carrito.html"> Ver mas </a>
						</button>
					</div>
				</div>
			</div>
		</div>


		<div class="clearfix"></div>

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