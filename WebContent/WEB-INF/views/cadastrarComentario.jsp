<jsp:include page = "header.jsp" />
<body>
	<div class="wrapper">
	 	<jsp:include page = "sideBar.jsp" />
	 	<div id="content">
	 	<!-- navBar -->
	 	 	<jsp:include page = "navBar.jsp" />
	 			<!-- Breadcrumb -->
		 	   <nav aria-label="breadcrumb">
	            <ol class="breadcrumb">
	            	<li ><a href="homeAdmin"><i class="fas fa-arrow-left mr-2"></i></a></li>
	                <li class="breadcrumb-item"><a href="homeAdmin">Home Administrador</a></li>
	                <li class="breadcrumb-item active" aria-current="page">Cadastrar Analista</li>
	            </ol>
	       		</nav>
	       	 	<!-- Fim Breadcrumb -->
	 			<section>
                	<div class="panel px-5">
                    	<div class="painel-heading">
                        	<button class="btn-md  pi-btnVoltar border-0" alt="home" title="home">
                        		<a href="homeAdmin"><i class="fas fa-arrow-left mr-2"></i></a>
                        	</button>
                        	<h1 class="">Cadastrar Analista</h1>
                    	</div>
						<hr>
						<form action="criar_comentario" method="post">
                    		<div class="row">
                        		<div class="col-md-6 border-right ">
                
	                            	
		                            <div class="form-group">
		                                <label for="comentarios" class="text-left">Comentários</label>
		                                <textarea name="comentarios" id="comentarios" cols="30" rows="10" class="form-control" placeholder="Ex: Analista com 5 anos de experiÃªncia em Front-End."></textarea>
		                            </div>
		                            
									<div class="form-group">
										 <input type="hidden" name="idDemanda" value="${demanda.idDemanda }" />
									</div>
                             	</div>
                             	
	                            <div class="col-md-12">
	                               <input type="submit" />
	                            </div>
                    		</div>
        				</form>
                    </div>
        			<jsp:include page = "dev.jsp" />
				</div>
        	<!-- Fim Painel de Cadastro -->
    	</div>
	</body>
	<script src="js/alertAnalist.js"> </script>
</html>