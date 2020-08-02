<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="pt-br">
<jsp:include page="header.jsp" />
<body>
	<div class="wrapper">
		<jsp:include page="sideBar.jsp" />
		<div id="content">
			<!-- navBar -->
			<jsp:include page="navBar.jsp" />
			<!-- Breadcrumb -->
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li><a href="painelDemandaAdmin"><i
							class="fas fa-arrow-left mr-2"></i></a></li>
					<li class="breadcrumb-item"><a href="homeAdmin">Home
							Administrador</a></li>
					<li class="breadcrumb-item active" aria-current="page">Cadastrar
						Projeto</li>
				</ol>
			</nav>
			<!-- Fim Breadcrumb -->
			<section>
				<div class="panel px-5">
					<div class="painel-heading">
						<h1 class="">Cadastrar projeto</h1>
					</div>
					<hr>
					<form action="criar_Projeto" method="post">
					<div class="row">
							<div class="col-md-6 border-right ">
								<div class="form-group">
									<label for="nomeProjeto" class="text-left">Nome do
										projeto</label> <input id="nomeProjeto" name="nomeProjeto" value=""
										type="text" class="form-control"
										placeholder="Ex: Projeto reestruturação de código" required>
								</div>
							
								<div class="form-group">
									<label for="valor" class="text-left">Valor do projeto</label> <input
										id="valor" name="valor" value="" type="text"
										class="form-control" placeholder="Ex: R$ 0.000,00" required>
								</div>

								<div class="form-group">
									<label for="duracao" class="text-left">Duração do
										projeto(dias)</label> <input id="duracao" name="duracao" value=""
										type="text" class="form-control" placeholder="Ex: 15" required>
								</div>
							</div>

				
						<div class="col-md-6 ">
							<div class="form-group">
								<label for="cliente">Cliente</label> <select
									class="form-control" name="cliente.idCliente"
									id="cliente" >
									<option>Selecione o cliente</option>
									<c:forEach var="cliente" items="${clientes}">
										<option value="${cliente.idCliente }">${cliente.razaoSocial}</option>
									</c:forEach>
								</select>
							</div> 
							
							<div class="form-group">
								<label for="descricaoProjeto" class="text-left">Observações
									do projeto</label>
								<textarea name="descricaoProjeto" id="descricaoProjeto"
									cols="30" rows="10" class="form-control"
									placeholder="O projeto devera ter um estagiario e dois analistas nivel II (2) para fins..."></textarea>
							</div>
							
							<div class="form-group">
								 <input type="hidden" name="status" value="Não Iniciado" />
							</div>
						</div>

						<div class="col-md-12">
							<button class="btn pi-btn btn-lg btn-block" name="criar_Projeto"
								onclick="projCreated()" value="criar">Salvar Projeto</button>
						</div>
						</form>
				</div>
				</section>
				<jsp:include page="dev.jsp" />
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>