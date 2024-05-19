<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plush</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@300&display=swap" rel="stylesheet"></head>

<body id="fondoPrincipal">
	<main>
		<nav class="navbar navbar-expand-lg bg-body-tertiary ">
	  	<div class="container-fluid">
	    			<a class="navbar-brand" href="/plush">
	    			<img id="logo" src="/img/logoDakota.png" alt="Dakota Logo">
	    			</a>
	    			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      				<span class="navbar-toggler-icon"></span>
	    			</button>
	   			 <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNav">
	      			<ul class="navbar-nav menu">
	        			<li class="nav-item">
	          				<a class="nav-link" href="/plush">Inicio</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link" href="/campañas">Campañas</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link" href="/nuestra-mision">Nuestra mision</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link" href="/contactanos">Contactanos</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link" href="/donaciones">Dona</a>
	        			</li>
	        			<c:if test="${empty userInSession}">
	        				<li>
	        					<a class="nav-link" href="/inicia_sesion">Ingresar</a>
	        				</li>
	        			</c:if>
	        			<c:if test="${not empty userInSession}">
	        				<c:if test="${userInSession.userType==3 || userInSession.userType==1}">
		        				<li>
		        				<a class="nav-link" href="/perfil/${userInSession.id}">Mi perfil</a>
		    					</li>
		    				</c:if>
		    				<c:if test="${userInSession.userType==2}">
		        				<li>
		        				<a class="nav-link" href="/perfil_ong/${userInSession.id}">Mi perfil</a>
		    					</li>
		    				</c:if>
		    					<li>
		    					<a class="nav-link" href="/logout">Cerrar sesión</a>
		      					</li>
		      					
	      				</c:if>	
	      			</ul>
	    					
	    		</div>
	  			</div>
			</nav>
		<div class="container">
		<div class="col-12 p-3 mainSquare">

			<div class="p-3 mb-2 text-white">
    			<h1 class="bienvenida">Bienvenido a Dakota</h1>
    			<h3 class="bienvenida"> ¡El poder de la solidaridad, la ecología y el amor por los animales!</h3>
    		</div>
    		<div class="row">
    			<div class="col-6">
    					<p class="fuente_inicio">
    					En Dakota, creemos firmemente que cada acción cuenta y que todos tenemos el poder de generar un cambio significativo.
    					Trabajamos de la mano de organizaciones que comparten nuestra visión, formando alianzas sólidas para multiplicar nuestros esfuerzos y alcanzar resultados excepcionales.
						</p>
						
				</div>	
				<div class="col-6 video">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/hsTTHVEtkBA?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
						clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				</div>
    		</div>
		</div>
		</div>
	</main>	
	<footer id="footer" class="text-center text-lg-start text-white">
	    <section class="d-flex justify-content-between p-4 footer_sup">
	      <div class="me-5 text_footer_sup ">
	        <span>Redes sociales</span>
	        <div class="iconosRRSS d-flex justify-content-start">
	        	<img src="/img/f.svg" alt="facebook Logo">
	        	<img src="/img/Instagram_logo.svg" alt="instragram Logo">
	        	<img src="/img/twitter.svg" alt="twitter Logo">
	        	<img src="/img/linkedin.svg" alt="linkedin Logo">
	       	</div>
	      </div>
	    </section>
	    <section>
	      <div class="container text-center text-md-start mt-5">
	        <div class="row mt-3">
	          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
	            <h6 class="text-uppercase fw-bold">OSFL DAKOTA</h6>
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
	            <p>
	              Gracias por contar con nosotros en Dakota, la organización comprometida con un mundo mejor. Trabajamos incansablemente para apoyar fundaciones sociales, proteger el medio ambiente y promover los derechos de los animales. ¡Únete a nuestro movimiento de cambio y construyamos juntos un futuro más justo y sostenible!
	            </p>
	          </div>
	          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
	            <h6 class="text-uppercase fw-bold">Categorias</h6>
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
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
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
		        <p>
		          <a href="/perfil/${userInSession.id}" class="text-white">Tu cuenta</a>
		       </p>
	  
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
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
	            <p><i class="fas fa-home mr-3"></i>Santiago forch</p>
	            <p><i class="fas fa-envelope mr-3"></i> dakotaosfl@gmail.com</p>
	            <p><i class="fas fa-phone mr-3"></i> +56 9 133</p>
	            <p><i class="fas fa-print mr-3"></i> +56 9 132</p>
	          </div>
	
	        </div>
	
	      </div>
	    </section>
	    <div
	         class="text-center p-3"
	         style="background-color: rgba(0, 0, 0, 0.2)"
	         >
	      © 2023 Grupo 5 el mejor grupo:
	      <a class="text-white" href="https://mdbootstrap.com/"
	         >FORGE.COMCITO</a
	        >
	    </div>
  </footer>
</body>
</html>