<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quienes somos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
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
	          				<a class="nav-link selected" href="/plush">Inicio</a>
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
		<!-- HEADER -->
		<div class="RevHeader">

				<img id="GPlogo" src="https://i.pinimg.com/564x/60/55/22/60552236f6300d1b2c84cf373294fe6d.jpg" alt="GreenpeaceLogo">

			<div class="info">
				<h1>Protege los océanos del mundo</h1>
				<h3>PB</h3>
				<a href="/campañas" class="btn btn-info">Volver a Campañas</a>
			</div>
		</div>
		
		<!-- HEADER -->
		
		<!-- CONT1 -->
		<div class="cont1" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
			<img alt="Ballena" src="https://i.pinimg.com/564x/f1/25/78/f125787c594120b150fbd35597654179.jpg">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique nisi in lacus mattis, eget posuere elit mollis. Vivamus ac eleifend massa. In ut varius ligula. Vestibulum tempus, nunc at fringilla viverra, nibh dui vestibulum sapien, sed fringilla arcu leo id tortor. Quisque gravida massa in tellus lobortis, id luctus eros aliquam. Aliquam sit amet lacinia odio. Integer eget odio a lorem tempor auctor sed eget est. Aliquam aliquet, elit id iaculis dapibus, neque leo aliquet velit, eu consequat tortor odio ac urna. Donec ut metus at elit vestibulum consectetur. Nulla facilisi. Curabitur id fermentum neque. Nam sodales, lorem a hendrerit accumsan, lacus enim gravida lectus, vitae facilisis est nisi in dui.</p>
		</div>
		<!-- CONT1 -->
		
		<!-- CONT2 -->
		<div class="cont1" style="border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
			<div>
				<p>Suspendisse sed justo at risus iaculis faucibus. Nulla facilisi. Duis vulputate, velit at faucibus euismod, ante purus vulputate sapien, ut vulputate lectus erat non massa. In ultrices arcu mauris, vel lacinia tellus pharetra non. Proin nec ultricies nulla, a vestibulum nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc vestibulum velit quis enim eleifend, vitae consectetur nunc tempor. Donec ac consectetur ligula. Suspendisse aliquet velit nec est facilisis, sit amet dapibus sapien iaculis. Morbi vel semper dui. Cras feugiat, mauris vel efficitur congue, mi sem fermentum nunc, vel faucibus arcu nisi non est. In hac habitasse platea dictumst. Sed id congue justo.</p>
				<a href="/donaciones" class="btn btn-light">Quiero hacer una donación</a>
			</div>
			<img alt="oceano" src="https://i.pinimg.com/564x/db/c1/7f/dbc17f643d217cb70983705e17b260d2.jpg">
		</div>
		<!-- CONT2 -->
	
		<!-- REVIEWS -->
		<div class="contr d-flex justify-content-center flex-wrap">
			<div class="g-col-6 p-4" id="mision">
				<h1 class="header negrita">Reviews </h1><!-- Welcome to reviews -> Reviews -->
				<form:form action="/CreateReview" method="post" modelAttribute="review">
					<div class="form-group">
						<form:label path="message"><h5>Add Review:</h5></form:label>
						<form:textarea path="message" class="form-control" />
						<form:errors path="message" class="text-danger" />
						<form:label path="rating"><h5>Rating:</h5></form:label>
						<form:errors path="rating" class="text-danger "></form:errors>
						<form:select path="rating" >
                              <option value="1">1</option>
                             <option value="2">2</option>
                             <option value="3">3</option>
                             <option value="4">4</option>
                             <option value="5">5</option>
                             <option value="6">6</option>
                             <option value="7">7</option>
                             <option value="8">8</option>
                             <option value="9">9</option>
                             <option value="10">10</option>
                        </form:select>
						<form:hidden path="author" value="${userInSession.id}" />
						<div class="Creview">
							<input type="submit" class="btn btn-primary" value="Create Review" />
						</div>
							
					</div>
				</form:form>
				
			</div>
			<div class="g-col-6 p-4 mt-4" id="contacto">
				<c:forEach items="${ rev}" var="review">
					<div id="review-body">
						<p>Autor: ${review.author.name} ${review.author.lastName }</p>
						<p>Opinion: ${review.message}</p>
						<p>Nota: ${review.rating }</p>
						<c:if test="${review.author.id == userInSession.id}">
							<form action="/ReviewDelete/${review.id}" method="post">
		                    	<input type="hidden" name="_method" value="delete" />
		                        <input type="submit" value="Eliminar" />
		                    </form>
						</c:if>
						
                   </div>
                   <hr>
				</c:forEach>
			</div>
		</div>
		<!-- REVIEWS -->
		
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