<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quienes somos</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap"
	rel="stylesheet">
</head>
<body class="fondoVector">
	<nav class="navbar navbar-expand-lg bg-body-tertiary ">
		<div class="container-fluid">
			<a class="navbar-brand" href="/plush"> <img id="logo"
				src="/img/logoDakota.png" alt="Dakota Logo">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse d-flex justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav menu">
					<li class="nav-item"><a class="nav-link selected"
						href="/plush">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="/campañas">Campañas</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="/nuestra-mision">Nuestra mision</a></li>
					<li class="nav-item"><a class="nav-link" href="/contactanos">Contactanos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/donaciones">Dona</a>
					</li>
					<c:if test="${empty userInSession}">
						<li><a class="nav-link" href="/inicia_sesion">Ingresar</a></li>
					</c:if>
					<c:if test="${not empty userInSession}">
						<c:if
							test="${userInSession.userType==3 || userInSession.userType==1}">
							<li><a class="nav-link" href="/perfil/${userInSession.id}">Mi
									perfil</a></li>
						</c:if>
						<c:if test="${userInSession.userType==2}">
							<li><a class="nav-link"
								href="/perfil_ong/${userInSession.id}">Mi perfil</a></li>
						</c:if>
						<li><a class="nav-link" href="/logout">Cerrar sesión</a></li>

					</c:if>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container">
		<div class="d-flex justify-content-center flex-wrap">
			<div class="g-col-6 p-4" id="mision">
				<h1 class="header negrita">Quiénes somos</h1>
				<h2 class="negrita">
					<p>Dakota es una plataforma en línea que reúne ONGs de
						diferentes categorías, incluyendo animalistas, sociales,
						humanistas y ecologistas. Nuestro objetivo es trabajar juntos para
						lograr un planeta mejor. Promovemos la colaboración entre estas
						organizaciones, aprovechando su experiencia y recursos para
						abordar de manera integral los desafíos globales. Únete a nosotros
						en este viaje hacia un futuro sostenible y equitativo.</p>
					<p>Nuestro enfoque se basa en la creencia de que los problemas
						del mundo no pueden resolverse de manera aislada. Reconocemos que
						las distintas categorías en las que nos centramos representan
						desafíos únicos y complejos, pero también vemos el potencial de
						sinergia y aprendizaje mutuo entre ellas. Al trabajar juntos,
						podemos lograr un impacto más significativo y duradero.</p>
					<p>En Dakota, nos esforzamos por ser transparentes y rendir
						cuentas. Comunicamos de manera clara y precisa nuestras
						actividades, así como los progresos y resultados alcanzados por
						las ONGs asociadas. Estamos comprometidos en establecer relaciones
						sólidas con nuestros usuarios y colaboradores, y valoramos sus
						contribuciones y retroalimentación para mejorar constantemente
						nuestra plataforma. Únete a Dakota en nuestro viaje hacia un
						futuro mejor. Juntos, podemos generar un impacto positivo y
						construir un mundo más justo, saludable y sostenible para las
						generaciones venideras. ¡Gracias por ser parte de Dakota!</p>
					<div class="d-flex justify-content-between p-auto">
						<span class="text-white bg-opacity-50 p-2"
							id="contenedores_textos">Comprometidos con ayudar</span> <span
							class="text-white bg-opacity-50 p-2" id="contenedores_textos">Apoyo</span>
						<span class="text-white bg-opacity-50 p-2"
							id="contenedores_textos">Reponsables</span>
					</div>
			</div>
			<div class="g-col-6 p-4 mt-4" id="contacto">
				<h1 class="header negrita">Contactanos</h1>
				<h5>Correo electronico</h5>
				<p>
					<img class="iconoCorreo mt-3" src="/img/correo_icon.svg"
						alt="correo logo">tuayuda@codingdojo.cl
				</p>
				<h5>Número telefonico</h5>
				<p>
					<img class="iconosRRSS" src="/img/telefono_icon.svg"
						alt="telefono logo">+56 (9) 1234 5678
				</p>
			</div>
		</div>
	</div>
	<footer id="footer" class="text-center text-lg-start text-white">
		<section class="d-flex justify-content-between p-4 footer_sup">
			<div class="me-5 text_footer_sup ">
				<span>Redes sociales</span>
				<div class="iconosRRSS d-flex justify-content-start">
					<img src="/img/f.svg" alt="facebook Logo"> <img
						src="/img/Instagram_logo.svg" alt="instragram Logo"> <img
						src="/img/twitter.svg" alt="twitter Logo"> <img
						src="/img/linkedin.svg" alt="linkedin Logo">
				</div>
			</div>
		</section>
		<section class="">
			<div class="container text-center text-md-start mt-5">
				<div class="row mt-3">
					<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
						<h6 class="text-uppercase fw-bold">OSFL DAKOTA</h6>
						<hr class="mb-4 mt-0 d-inline-block mx-auto"
							style="width: 60px; background-color: #7c4dff; height: 2px" />
						<p>Gracias por contar con nosotros en Dakota, la organización
							comprometida con un mundo mejor. Trabajamos incansablemente para
							apoyar fundaciones sociales, proteger el medio ambiente y
							promover los derechos de los animales. ¡Únete a nuestro
							movimiento de cambio y construyamos juntos un futuro más justo y
							sostenible!</p>
					</div>
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
						<h6 class="text-uppercase fw-bold">Categorias</h6>
						<hr class="mb-4 mt-0 d-inline-block mx-auto"
							style="width: 60px; background-color: #7c4dff; height: 2px" />
						<p>
							<a href="#!" class="text-white">Sociales</a>
						</p>
						<p>
							<a href="#!" class="text-white">Humanistas</a>
						</p>
						<p>
							<a href="#!" class="text-white">Ecologistas</a>
						</p>
						<p>
							<a href="#!" class="text-white">Solidarias</a>
						</p>
					</div>
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<h6 class="text-uppercase fw-bold">Más info!</h6>
						<hr class="mb-4 mt-0 d-inline-block mx-auto"
							style="width: 60px; background-color: #7c4dff; height: 2px" />
						<c:if
							test="${userInSession.userType==3 || userInSession.userType==1}">
							<p>
								<a href="/perfil/${userInSession.id}" class="text-white">Tu
									cuenta</a>
							</p>
						</c:if>
						<c:if test="${userInSession.userType==2}">
							<p>
								<a href="/perfil/${userInSession.id}" class="text-white">Tu
									cuenta</a>
							</p>
						</c:if>
						<p>
							<a href="/donaciones" class="text-white">Donaciones</a>
						</p>
						<p>
							<a href="/nuestra-mision" class="text-white">Quienes somos</a>
						</p>
						<p>
							<a href="/contactanos" class="text-white">Contactanos</a>
						</p>
					</div>
					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
						<h6 class="text-uppercase fw-bold">Contacto</h6>
						<hr class="mb-4 mt-0 d-inline-block mx-auto"
							style="width: 60px; background-color: #7c4dff; height: 2px" />
						<p>
							<i class="fas fa-home mr-3"></i>Santiago forch
						</p>
						<p>
							<i class="fas fa-envelope mr-3"></i> dakotaosfl@gmail.com
						</p>
						<p>
							<i class="fas fa-phone mr-3"></i> +56 9 133
						</p>
						<p>
							<i class="fas fa-print mr-3"></i> +56 9 132
						</p>
					</div>

				</div>

			</div>
		</section>
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2)">
			© 2023 Grupo 5 el mejor grupo: <a class="text-white"
				href="https://mdbootstrap.com/">FORGE.COMCITO</a>
		</div>
	</footer>
</body>
</html>