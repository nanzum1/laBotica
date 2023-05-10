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


   <div class="conteiner col-12">
        <div class="justify-content-center conteiner row g-3 text-center">
            <div class=" justify-content-center col-md-7 col-lg-8 text-center">
                <div class="card" style="width: 18rem; margin:0 auto; float: none; margin-bottom: 10px; color:rgb(1, 31, 31)">
                    <img class="card-img-top img-center" src="resources/img/envio-exitoso.png"  alt="Envio exitoso">
                    <div class="card-body">
                      <h5 class="card-title text-center">Envio exitoso</h5>
                      <p class="card-text text-center">Su solicitud de contacto ha sido ingresada con exito, nos comunicaremos a la brevedad</p>
                    </div>
                </div>
            </div>
            <a class="w-50 btn btn-primary btn-md" href="<c:url value='/'/>" type="submit">Volver</a>
        </div> </br></br></br>
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