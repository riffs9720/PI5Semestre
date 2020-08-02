<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
                	<li><a href="homeAdmin"><i class="fas fa-arrow-left mr-2"></i></a></li>
	                    <li class="breadcrumb-item"><a href="homeAdmin">Home Administrador</a></li>
	                    <li class="breadcrumb-item active" aria-current="page">Cadastrar Cliente</li>
	                </ol>
            	</nav>
            	<!-- Fim Breadcrumb -->
            	<section class="">
                	<div class="panel px-5">
                    	<div class="painel-heading">
                        	
							<h1 class="">Cadastrar Cliente</h1>
                    	</div>
                    	<hr>
                    	<form action="criar_Cliente" method="post">
						<div class="row">
						
                        	<div class="col-md-6 border-right ">
								
									<div class="form-group">
                                    	<label for="nomeDoCliente" class="text-left">Nome do Cliente</label>
                                    	<input id="nomeDoCliente" name="razaoSocial"  type="text" class="form-control" placeholder="Ex: Ernst & Young" required>
                                	</div>
	                                <div class="form-group">
	                                    <label for="cnpj" class="text-left">CNPJ</label>
	                                    <input id="cnpj" name="cnpj" type="text" class="form-control" placeholder="Ex: 11.401.709/0001-45"  maxlength="25" required>
	                                </div>
									<div class="form-group">
	                                    <label for="enderecoCliente" class="text-left">Endereço</label>
	                                    <input id="enderecoCliente" name="endereco"  type="text" class="form-control" placeholder="Ex: Av. Dr. Chucri Zaidan, 860 - SÃ£o Paulo - SP" required>
                                	</div>
									<div class="form-group">
                                    	<label for="telefoneCliente" class="text-left">Telefone</label>
                                    	<input id="telefoneCliente" name="telefone"  type="text" class="form-control" placeholder="Ex: (11) 99999-9999" required>
                                	</div>
                     
                            	</div>
                            	<div class="col-md-6 ">
                                	<div class="form-group">
	                                    <label for="setor" class="text-left">Setor</label>
	                                    <select name="setor" id="inputState" class="form-control">
	                                        <option selected>Escolha</option>
	                                        <option>Indústria</option>
	                                        <option>Comércio</option>
	                                        <option>Administrativo</option>
	                                        <option>Outros</option>
										</select>
									</div>
		                            <div class="form-group">
		                                <label for="observaçõesCliente" class="text-left">Observações</label>
		                                <textarea name="observações" id="observaçõesCliente" cols="30" rows="10" class="form-control" placeholder="Ex: Cliente possui 1500 funcionários."></textarea>
		                            </div>
                        		</div>
		                        <div class="col-md-12">
		                            <button type="submit" onclick="alertClient()" name="criar_Cliente" class="btn pi-btn btn-lg btn-block">Salvar Cliente</button>
		                        </div>
                    		
                		</div>
                		</form>
						<jsp:include page = "dev.jsp" />
	 				<jsp:include page = "footer.jsp" />
	 				<script src="js/mask.js"></script>
     			</body>
     			<script src="js/alertClient.js"></script>
			</html>