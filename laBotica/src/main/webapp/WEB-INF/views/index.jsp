<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	<jsp:include page="FIJOS/NavBar.jsp"></jsp:include>
	<div id="conteiner col-lg-3 col-md-4 col-6">
		<section class="bg-light py-4 my-5">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1 class="mb-3 text-primary">Escoje una opcion</h1>
					</div>

					<div class="col-md-6 col-lg-4">
						<div class="card my-3">

							<img
								src="https://prints.ultracoloringpages.com/13ca6ba9b9f3dee2411764f441e6b942.png"
								class="card-image-top" alt="thumbnail">

							<div class="card-body">
								<h3 class="card-title">
									<a href="#" class="text-secondary">Usuarios</a>
								</h3>
								<p class="card-text">Aqui puedes ver y modificar usuarios</p>
								<a href="#" class="btn btn-primary">Ver mas</a>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4">
						<div class="card my-3">

							<img
								src="https://www.shutterstock.com/image-vector/warehouse-boxes-inventory-fulfillment-distribution-600w-1493279252.jpg"
								class="card-image-top" alt="thumbnail">

							<div class="card-body">
								<h3 class="card-title">
									<a href="#" class="text-secondary">Productos</a>
								</h3>
								<p class="card-text">Aqui puedes ver y modificar productos</p>
								<a href="#" class="btn btn-primary">Ver mas</a>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4">
						<div class="card my-3">

							<img
								src="https://thumbs.dreamstime.com/z/s%C3%ADmbolo-de-icono-venta-cerrada-signo-creativo-la-colecci%C3%B3n-iconos-crm-ventas-cerradas-llenas-y-planas-para-ordenador-m%C3%B3vil-152162003.jpg"
								class="card-image-top" alt="thumbnail">
							<div class="card-body">
								<h3 class="card-title">
									<a href="#" class="text-secondary">Ventas</a>
								</h3>
								<p class="card-text">Aqui puedes ver las ventas</p>
								<a href="#" class="btn btn-primary">Ver mas</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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