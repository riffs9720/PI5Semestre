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
						<form action="criar_Usuario" method="post">
                    		<div class="row">
                        		<div class="col-md-6 border-right ">
                     				<div class="form-group">
                                    	<label for="nomeDoAnalista" class="text-left">Nome</label>
                                    	<input id="nomeDoAnalista" name="nomeUsuario" value="" type="text" class="form-control" placeholder="Ex: Joao Patrimonio" required>
                                	</div>
	                                <div class="form-group">
	                                    <label for="emailAnalista" class="text-left">E-mail</label>
	                                    <input id="emailAnalista" name="email" value="" type="text" class="form-control" placeholder="Ex: JoaoPatrimonio@gmail.com"
	                                    required>
	                                </div>
                                
	                                 <div class="form-group">
	                                    <label for="senhaAnalista" class="text-left">Senha</label>
	                                    <input id="senhaAnalista" name="senha" value="" type="text" class="form-control" placeholder=""
	                                    required>
	                                </div>

	                                <div class="form-group">
	                                    <label for="telefone" class="text-left">Telefone</label>
	                                    <input id="telefone" name="telefone" value="" type="text" class="form-control" placeholder="Ex: (11) 99999-9999" required>
	                                </div>
	                                 <div class="form-group">
	                                    <label for="celular" class="text-left">Celular</label>
	                                    <input id="celular" name="celular" value="" type="text" class="form-control" placeholder="Ex: (11) 99999-9999" required>
	                                </div>
	                              
                            	</div>
	                            <div class="col-md-6 ">
	                                <div class="form-group">
	                                    <label for="tipoAnalista" class="text-left">Tipo de Analista</label>
	                                    <input id="tipoAnalista" name="cargo" value="" type="text" class="form-control" placeholder="Ex: Analista Junior" required>
	                            	</div>
	                            	 <div class="form-group">
	                                    <label for="rgAnalista" class="text-left">RG</label>
	                                    <input id="rgAnalista" name="rg" value="" type="text" class="form-control" placeholder="Ex: 48.428.478-X" required>
	                            	</div>
	                            	 <div class="form-group">
	                                    <label for="cpfAnalista" class="text-left">CPF</label>
	                                    <input id="cpfAnalista" name="cpf" value="" type="text" class="form-control" placeholder="Ex: 123.369.987-98" required>
	                            	</div>
	                            	
		                            <div class="form-group">
		                                <label for="observacoes" class="text-left">Observações</label>
		                                <textarea name="observacoes" id="observacoes" cols="30" rows="10" class="form-control" placeholder="Ex: Analista com 5 anos de experiÃªncia em Front-End."></textarea>
		                            </div>
		                            <div class="form-group">
								 	<input type="hidden" name="tipoUsuario" value="1" />
									</div>
                             	</div>
                             	
	                            <div class="col-md-12">
	                                <button onclick="alertAnalist()" class="btn pi-btn btn-lg btn-block" value="criar_Usuario">Salvar Analista</button>
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