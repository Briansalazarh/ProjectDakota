<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new User</title>
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
        			<c:if test="${empty userInSession}">
        				<li>
        					<a class="nav-link" href="/inicia_sesion">Ingresar</a>
        				</li>
        			</c:if>
        			<c:if test="${not empty userInSession}">
        				<li>
        				<a class="nav-link" href="#">Mi perfil</a>
    					</li>
    					<li>
    					<a class="nav-link" href="/logout">Cerrar sesión</a>
      					</li>
      				</c:if>	
      			</ul>
    					
    		</div>
  			</div>
		</nav>
	<div class="container mt-3 mb-4">
		<div class="d-flex grid gap-4"> 
			<div class="g-col-6 p-4 registro">
				<h2 class="negrita header">Registrate</h2>
				<form:form action="/register_ong" method="post" modelAttribute="newOng">
					<div>
						<form:label class="mt-3" path="orgaName">Nombre de la organización</form:label>
						<form:input path="orgaName" class="form-control"/>
						<form:errors path="orgaName" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="acronym">Acronimo</form:label>
						<form:input path="acronym" class="form-control"/>
						<form:errors path="acronym" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="tel">Número de contacto</form:label>
						<form:input path="tel" class="form-control"/>
						<form:errors path="tel" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="rut">E-Rut</form:label>
						<form:input path="rut" class="form-control"/>
						<form:errors path="rut" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="email">Email de la organización</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					<div>
						<form:label path="category">categorias</form:label>
						<form:select path="category" class="form-control">
							<c:forEach items="${category}" var="categories">
								<option value="${categories}">${categories}</option>
							</c:forEach>
						</form:select>
					</div>
					
					<div>
						<form:label class="mt-3" path="description">Descripción</form:label>
						<form:textarea path="description" class="form-control"/>
						<form:errors path="description" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="password">Contraseña</form:label>
						<form:password path="password" class="form-control"/>
						<form:errors path="password" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="confirm">Confirmar Contraseña</form:label>
						<form:password path="confirm" class="form-control"/>
						<form:errors path="confirm" class="text-danger"/>
					</div>
					
					<div class="d-flex mt-3">
						<input type="submit" class="btn btn-primary" value="Crear cuenta">
						<div class="align-self-center">
							<span>¿Eres una persona natural? </span>
							<a href="/inicia_sesion">Registrate aquí</a>
						</div>	
					</div>
					
				</form:form>
				
			</div>
			<div class="g-col-6 p-4 inicio ">
				<h2 class="negrita header">Inicia sesión</h2>
				<p class="text-danger">${error_login}</p>
					<form action="/login_ong" method="post">
						<div>
							<label class="mt-3">Email de la organización</label>
							<input type="text" class="form-control" name="email"/>
						</div>
						<div>
							<label class="mt-3">Contraseña</label>
							<input type="password" class="form-control" name="password"/>
						</div>
						<input type="submit" class="btn btn-primary mt-3" value="Ingresar">
					</form>
			</div>
		</div>
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