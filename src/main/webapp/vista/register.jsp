<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
    
</head>
<body>
<%
//scriplet
%>
 <jsp:include page="../vista/componentes/header.jsp"></jsp:include>
 
	<div class="container">
	    <div class="login-container">
	        <h1>Register</h1>
	        <form action="<%=request.getContextPath()%>/LoginControlador" method="post">
	            <input type="text" name="correo" placeholder="Correo" required>
	            <input type="password" name="password" placeholder="Contraseña" required>
	            <button type="submit">Registrar</button>
	            <c:if test="${not empty errorMessage}">
	                <p class="error">${errorMessage}</p>
	            </c:if>
	        </form>
	    </div>
    </div>
 <jsp:include page="../vista/componentes/footer.jsp"></jsp:include>

</body>
</html>