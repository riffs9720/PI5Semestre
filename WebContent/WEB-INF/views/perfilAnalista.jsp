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
                              <li class="breadcrumb-item"><a href="homeAnalista">Home Analista</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Perfil</li>
                            </ol>
                        </nav>
                        <!-- Fim Breadcrumb -->
                        <section class="">
                    		<div class="panel px-5">
                        		<div class="painel-heading">
                                	<button class="btn-md  pi-btnVoltar border-0" alt="home" title="home">
                                		<a href="homeAnalista"><i class="fas fa-arrow-left mr-2"></i></a>
                                	</button>    
									<h1 class="">Perfil</h1>
                        		</div>
                        		<hr>
                       			<div class="row">
                                    <div class="col-md-6 border-right ">
                                   		<h5 >Redefinir senha</h5>
                                        <hr>
                                   		<form method="POST" action="" class="text-center">
                  							<div class="form-group">
                                                <input id="antigaSenha" name="antigaSenha" value="" type="password" class="form-control" placeholder="Sua senha atual" required>
                                            </div>
                                            <div class="form-group">
                                                <input id="novaSenha" name="novaSenha" type="password" class="form-control" placeholder="Nova senha" required>
                                            </div>
                                            <button class="btn pi-btn btn-lg btn-block">Redefinir senha</button>
                        				</form>
                                    </div>
                                    <div class="col-md-6 ">h5>Redefinir email</h5>
                                    <hr>
                                    <form method="POST" action="" class="text-center">
                  						<div class="form-group">
                                        	<input id="antigoEmail" name="antigoEmail" value="" type="text" class="form-control" placeholder="Seu email atual" required>
                                        </div>
                                        <div class="form-group">
                                        	<input id="novoEmail" name="novoEmail" type="text" class="form-control" placeholder="Novo email" required>
                                        </div>
                                        <button class="btn pi-btn btn-lg btn-block">Redefinir Email</button>
                                    </form>
                                  </div>
                    			</div>
                    		</section>
                    		<jsp:include page="dev.jsp">
                    	</div>
            		</div>
				<jsp:include page = "footer.jsp" />
				<script src="js/filtre.js"></script>
			</body>
		</html>