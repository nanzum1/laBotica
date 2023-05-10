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
  
    <!-- Cuerpo de la Pagina  -->
  
<div class="container">
	<legend class="text-center header">Eliminar Usuario</legend>
	<form action="eliminarUsuario" method="POST"> 
		<div class="mb-3">
			<label for="tipo_usuario" class="form-label">Tipo de usuario:</label>
			<select id="tipo_usuario" class="form-select" onchange="mostrarCampos()" name="tipo_usuario">
				<option value="">Seleccione una opción</option>
				<option value="cliente">Cliente</option>
				<option value="administrativo">Administrativo</option>
			</select>
		</div>

		<!-- Campos fijos para todos los usuarios -->
		<div class="mb-3">
			<label for="run" class="form-label">RUN de Usuario a eliminar:</label>
			<input type="text" class="form-control" id="run" name="run" placeholder="12345678-K" pattern="^[0-9]+-[0-9kK]{1}$">
		</div>
				<div class="mb-3">
			<label for="clave" class="form-label">Contraseña:</label>
			<input type="password" class="form-control" id="clave" name="clave">
		</div>
		<button type="submit" class="btn btn-danger btn-block">Eliminar Usuario</button>
	</form>
</div>
  <!------------------ Footer ----------------->

  <footer>
		<%@include file="../FIJOS/Footer.jsp"%>
  </footer>
  
<script src="../resources/js/main.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
    integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
    integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
    crossorigin="anonymous"></script>
</body>
</html>