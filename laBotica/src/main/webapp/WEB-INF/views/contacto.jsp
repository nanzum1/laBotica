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
<title>Contacto</title>
<link rel="stylesheet" href="resources/Estilos.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

</head>
<body>
	<nav>
		<%@include file="FIJOS/NavBar.jsp"%>
	</nav>
	<div id="conteiner col-lg-3 col-md-4 col-6">

		<div class="conteiner"></div>
		<div class="container col-12">
			<div class="container col-12">
				<div class="row align-items-center">

					<form class="form-horizontal" action="mensaje" method="POST">
						<fieldset>
							<legend class="text-center header">Contactenos</legend>

							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-user bigicon"></i></span>
								<div class="col-md-12">
									<input id="fname" name="name" type="text" placeholder="Nombre"
										class="form-control">
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-user bigicon"></i></span>
								<div class="col-md-12">
									<input id="lname" name="name" type="text"
										placeholder="Apellido" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-envelope-o bigicon"></i></span>
								<div class="col-md-12">
									<input id="email" name="email" type="text"
										placeholder="Correo Electronico" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-phone-square bigicon"></i></span>
								<div class="col-md-12">
									<input id="phone" name="phone" type="text"
										placeholder="Telefono" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-pencil-square-o bigicon"></i></span>
								<div class="col-md-12">
									<textarea class="form-control" id="message" name="Mensaje"
										placeholder="Ingrese aqui su mensaje." rows="7"></textarea>
								</div>
							</div>
						

							<button type="submit" class="btn btn-success btn-block">Enviar</button>

										
					
						</fieldset>
					</form>
				</div>
			</div>
			</br>
			</br>
			</br>
			</br>


			<!------------------ Footer ----------------->

<footer>
<%@include file="FIJOS/Footer.jsp"%>
</footer>

			<script src="../resources/js/main.js"></script>
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