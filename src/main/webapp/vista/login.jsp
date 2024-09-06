<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/misestilosParalogin.css">
    
</head>
<body>
<%
//scriplet
%>
 <jsp:include page="../vista/componentes/header.jsp"></jsp:include>
 
	<div class="container">
	    <div class="login-container">
	        <h1>Login</h1>
	        <form action="<%=request.getContextPath()%>/Login/ingresar" method="post">
	            <input type="email" name="email" placeholder="mail@mail.com" required
	            value="<%=request.getParameter("email") !=null? request.getParameter("email"):"" %>">
	            <input type="password" name="password" placeholder="Contraseña" required>
	            <button type="submit">Ingresar</button>
	            
	            
	             <a href="../vista/register.jsp">
   					<input class="botons" type="submit" value="Registrarse">
				</a>
	            
	            
				<c:if test="${not empty errorMessage}">
	                <p class="error">${errorMessage}</p>
	            </c:if>
	        </form>
	       
	    </div>
	    
	    	
    </div>
 <jsp:include page="../vista/componentes/footer.jsp"></jsp:include>

</body>
</html>