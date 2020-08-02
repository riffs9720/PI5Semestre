	<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<jsp:include page = "header.jsp" />
<script src="js/sidebarCollapse.js"></script>
<body>
	<nav id="sidebar">
    	<div class="sidebar-header text-center components">
         	<img src="img/ProjectForce.png" width="150px" alt="">
         </div>
		<ul class="list-unstyled components">
		<form action="Dados" method="get">
         <p class="components pi-bg-navbar">${Usuario.nomeUsuario }</p>
         </form> 
                <li>
                    <a href="homeAnalista">Home</a>
                </li>
                <li>
                    <a href="perfilAnalista">Perfil</a>
                </li>
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="Login" class="pi-btnSair"><i class="fas fa-sign-out-alt mr-2"></i>Sair</a>
                </li>
        </nav>
        
      
</body>
</html>