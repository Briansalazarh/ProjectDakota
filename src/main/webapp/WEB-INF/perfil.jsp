<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Perfil</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/perfil.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@300&display=swap" rel="stylesheet"></head>
	
</head>
<body>
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
          				<a class="nav-link selected" aria-current="page" href="/plush">Inicio</a>
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
    				<li>
    					<a class="nav-link" href="/logout">Cerrar sesión</a>
      				</li>
      			</ul>
    					
    		</div>
  			</div>
		</nav>
	<div class="container heigthPerfil">
	
		<div class="perfil">
			<div>
				<img id="avatar" src="/img/avatar.jpg" alt="avatar">
			</div>
			<div class="info">
				<h1>${user.name} ${user.lastName}</h1>
			</div>
		</div>
		<div class="perfilBtn">
			<ul class="d-flex">
				<li><a class="btn" href="#slide1">Perfil</a></li>
				<li><a class="btn" href="#slide3">Actividad</a></li>
				<li><a class="btn" href="#slide2">Opciones</a></li>
				<li><a class="btn btn-warning" href="#slide4">Te podría interesar...</a></li>
			</ul>
		</div>
		<ul class="slider">
		    <li id="slide1" >
		      <h6><strong>NOMBRE</strong></h6>
		      <p>${user.name}</p>
		      <h6><strong>APELLIDO</strong></h6>
		      <p>${user.lastName}</p>
		      <h6><strong>EMAIL</strong></h6>
		      <p>${user.email}</p>
		    </li>
		    <li id="slide2">
		      <h2>CONFIGURACION</h2>
		      <a href="/editar/${user.id}" class="btn btn-secondary">Editar perfil</a>
		      <a href="/contrasena" class="btn btn-secondary">Cambiar contraseña</a>
		      <a href="/historial" class="btn btn-secondary">Revisar donaciones</a>
		    </li>
		    <li id="slide3">
		      <h1>ACTIVIDAD</h1>
		      <div class="list-group">
				  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
				    <div class="d-flex w-100 justify-content-between">
				      <h5 class="mb-1">DONACIÓN</h5>
				      <small>3 days ago</small>
				    </div>
				    <p class="mb-1">Realizó  una donación de $10.000.</p>
				    <small>Donec id elit non mi porta.</small>
				  </a>
				  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
				    <div class="d-flex w-100 justify-content-between">
				      <h5 class="mb-1">COMENTARIO</h5>
				      <small class="text-muted">3 days ago</small>
				    </div>
				    <p class="mb-1">Añadió un comentario a la publicación de ${ong.ornaName}</p>
				    <small class="text-muted">Donec id elit non mi porta.</small>
				  </a>
				  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
				    <div class="d-flex w-100 justify-content-between">
				      <h5 class="mb-1">Rating</h5>
				      <small class="text-muted">3 days ago</small>
				    </div>
				    <p class="mb-1">Añadió un rating a ORGANIZATION NAME</p>
				    <small class="text-muted">Donec id elit non mi porta.</small>
				  </a>
				</div>
		    </li>
		    <li id="slide4">
		    	<h1>SUGERENCIAS</h1>
		    	<div class="card-deck">
					<div class="card">
					    <img class="card-img-top" src="..." alt="Card image cap">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
					      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					    </div>
					</div>
					<div class="card">
					    <img class="card-img-top" src="..." alt="Card image cap">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
					      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					    </div>
					</div>
					<div class="card">
					    <img class="card-img-top" src="..." alt="Card image cap">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
					      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    	</div>
				  	</div>
				</div>
		    </li>
	  	</ul>
		
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
		        	<a href="/perfil/${user.id}" class="text-white">Tu cuenta</a>
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