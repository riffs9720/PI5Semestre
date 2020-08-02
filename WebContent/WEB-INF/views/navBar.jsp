	<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
	
	<jsp:include page = "header.jsp" />
	
	<nav class=" navbar navbar-expand-lg navbar-light bg-light ">
		<div class="container-fluid">
	    	<button type="button" id="sidebarCollapse" class="navbar-btn">
	        	<span></span>
	            <span></span>
	            <span></span>
	         </button>
	         	<form action="Dados" method="get">
	         <div class="ml-auto ">
	         <span class="px-4">Usuário:  ${Usuario.nomeUsuario }</span>
	         <a href="Login"><span><i class="fas fa-sign-out-alt mr-2"></i>Sair</span></a>
	      </div>
	      	</form>
	   </div>
	  </nav>
	</body>
</html>