<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" type="text/css" href="/css/campaña.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@300&display=swap" rel="stylesheet"></head>
	
<title>Campanas</title>
</head>
<body class="fondoVector">
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
	          				<a class="nav-link " href="/plush">Inicio</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link " href="/campañas">Campañas</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link " href="/nuestra-mision">Nuestra mision</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link " href="/contactanos">Contactanos</a>
	        			</li>
	        			<li class="nav-item">
	          				<a class="nav-link " href="/donaciones">Dona</a>
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
	<intro>
		 <div class="container px-lg-5 mt-4">
 	        <div class="square p-4 text-center">
                <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold bienvenida_campana">Bienvenidos a Dakota!</h1>
                        <p class="fs-4">Aqui encontraras todas las organizaciones asociadas a nosotros, cada una tan importante como la otra, tu aporte hará que el mundo sea un poco mejor!</p>
                        <a class="btn btn-primary btn-lg" href="/plush">Vuelve al inicio</a>
                </div>
             </div>
         </div>
	</intro>
	<section>
		<div class="wrap-s">
			<div class="content">
				<div class="cta-area">
					<h2 id="bienvenida_campana" style="font-size:48px;color: #0d3d63;">¿Quiénes pueden ser atendidos por Dakota?</h2>
				</div>
				<br>
				<div class="cont">
					<ul>
						<li><a href="#slide1" class="point"></a></li>
						<li><a href="#slide2" class="point"></a></li>
					</ul>
				</div>
				<div class="d-flex justify-content-center">
					<ul class="slider">
						<li id="slide1">
							<div class="card">
								<div class="card-content d-flex justify-content-center">
									<div>								
										<h3 class="card-title">Discapacidad Motora</h3>
										<p class="card-description">Pueden atenderse en Dakota niños, niñas y pacientes jóvenes que
											tengan una discapacidad de origen neuro-músculo-esquelético.</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-content d-flex justify-content-center">
									<div>
										<h3 class="card-title">Edad del Paciente</h3>
										<p class="card-description">Dakota brinda atención hasta los 20 años cuando la discapacidad
											es de nacimiento, y hasta los 24 años cuando es adquirida.</p>
									</div>	
								</div>
							</div>
						</li>
						<li id="slide2">
							<div class="card">
								<div class="card-content d-flex justify-content-center">	
									<div>				
										<h3 class="card-title">Derivación Médica</h3>
										<p class="card-description">Se requiere una interconsulta médica que indique tratamiento de
											rehabilitación en Dakota. </p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-content d-flex justify-content-center">
									<div>
										<h3 class="card-title"> Antecedentes del Caso</h3>
										<p class="card-description">Se pueden enviar al correo electrónico
											admisionsantiago@teleton.cl o entregarlos directamente en el instituto Dakota más
											cercano. </p>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			</div>
		</div>
	</section>
<div  class="wrapper">
<section>
    <div class="container-fostrap" style="margin-top: 8%;">
        <div>
            <img src="img/logoDakota.png" class="fostrap-logo" style="width:150px; heigth:150px; border-radius: 100%;"/>
            <h1 id="bienvenida_campana">
                Campañas
            </h1>
        </div>
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card" style="height:500px;">
                            <a class="img-card" href="/reviews">
                            	<img src="https://i.pinimg.com/564x/f1/25/78/f125787c594120b150fbd35597654179.jpg"/>
                          	</a>
                            <div class="card-content">
                                <h4 class="card-title">
                                    <a href="/reviews"> Protege el oceano - PB
                                  </a>
                                </h4>
                                <p class="">
                                   	Es una ONG solidaria encargada de donar peluches y diferentes cosas a niños en situación de calle.
                                </p>
                            </div>
                            <div class="card-read-more">
                                <a href="/reviews" class="btn btn-link btn-block">
                                    leer mas!
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card" style="height:500px;">
                            <a class="img-card" href="https://www.greenpeace.org/chile/">
                            <img src="//upload.wikimedia.org/wikipedia/commons/thumb/3/38/Greenpeace_Climate_March_2015_Madrid.jpg/320px-Greenpeace_Climate_March_2015_Madrid.jpg" />
                          </a>
                            <div class="card-content">
                                <h4 class="card-title">
                                    <a href="https://www.greenpeace.org/chile/"> Green peace
                                  </a>
                                </h4>
                                <p class="">
                                    Greenpeacees una ONG​ ambientalista internacional. Realiza campañas en todo el mundo por temas como la agricultura ecológica, los bosques,
                                    el cambio climático, contra el consumismo, por la democracia y el contrapoder, el desarme y la paz y el cuidado de los océanos.
                                </p>
                            </div>
                            <div class="card-read-more">
                                <a href="https://www.greenpeace.org/chile/" class="btn btn-link btn-block">
                                    Leer mas!
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card" style="height:500px;">
                            <a class="img-card" href="https://www.teleton.cl">
                            <img src="//upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Teleton_Chile_Logo.svg/100px-Teleton_Chile_Logo.svg.png" />
                          </a>
                            <div class="card-content">
                                <h4 class="card-title">
                                    <a href="https://www.teleton.cl"> Teletón
                                  </a>
                                </h4>
                                <p class="">
                                    La Teletón es una institución sin fines de lucro que se dedica a la rehabilitación integral de niñas, niños y jóvenes de hasta 24 años, con alguna discapacidad motora. Cada año, la Teletón realiza una campaña solidaria televisiva, liderada por el animador Don Francisco.
                                </p>
                            </div>
                            <div class="card-read-more">
                                <a href="https://www.teleton.cl" class="btn btn-link btn-block">
                                    Leer mas!
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6" >
                        <div class="card" style="height:500px;">
                            <a class="img-card" href="/reviews">
                            <img src="img/hands.jpg" />
                          </a>
                            <div class="card-content">
                                <h4 class="card-title">
                                    <a href="/reviews"> titulo de la ong
                                  </a>
                                </h4>
                                <p class="">
                                    descripcion de la ong
                                </p>
                            </div>
                            <div class="card-read-more">
                                <a href="/reviews" class="btn btn-link btn-block">
                                    leer mas!
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<footer id="footer"
          class="text-center text-lg-start text-white"
          >
    <section
             class="d-flex justify-content-between p-4 footer_sup"
             >
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
    <section class="">
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
            <c:if test="${userInSession.userType==3 || userInSession.userType==1}">
		            <p>
		              <a href="/perfil/${userInSession.id}" class="text-white">Tu cuenta</a>
		            </p>
	           </c:if>
	           <c:if test="${userInSession.userType==2}">
		            <p>
		              <a href="/perfil/${userInSession.id}" class="text-white">Tu cuenta</a>
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