<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					<li><a href="listar_Projetos"><i
							class="fas fa-arrow-left mr-2"></i></a></li>
					<li class="breadcrumb-item"><a href="listar_Projetos">Home
							Administrador</a></li>
					<li class="breadcrumb-item"><a href="painelDemandaAdmin">Painel
							de controle de Demanda</a></li>
					<li class="breadcrumb-item active" aria-current="page">Cadastrar
						Demanda</li>
				</ol>
			</nav>
			<!-- Fim Breadcrumb -->
			<section class="">
				<div class="panel px-5">
					<div class="painel-heading">

						<h1 class="">Cadastrar Demanda</h1>
					</div>
					<hr>
					<form action="criar_demanda" method="post">
						<div class="row">

							<div class="col-md-6 border-right ">

								<div class="form-group">
									<label for="nomeDemanda" class="text-left">Nome da Demanda </label> 	
										<input id="nomeDemanda" name="nomeDemanda" type="text" class="form-control"
										placeholder="Ex: Ernst & Young" required>
								</div>
								
								<div class="form-group">
								<label for="usuario">Analista</label> <select
									class="form-control" name="usuario.idUsuario"
									id="cliente" >
									<option>Selecione o Analista</option>
									<c:forEach var="usuario" items="${usuarios}">
										<option value="${usuario.idUsuario}">${usuario.nomeUsuario}</option>
									</c:forEach>
								</select>
							</div> 
							
								<div class="form-group">
									<label for="tempoDemanda" class="text-left">Tempo
										Demanda</label> 
										<input id="tempoDemanda" name="tempoDemanda"
										type="text" class="form-control">
								</div>

							</div>
							
							<div class="col-md-6 ">
								<div class="form-group">
									<label for="arquivo" class="text-left">Anexar Arquivo</label> <input
										type="file" id="action_json" name="action_json"
										class="input-file" accept=".txt,.json">
									<div id="action_jsondisplay"></div>
								</div>
								
								<div class="form-group">
									<label for="descricaoDemanda" class="text-left">Descrição</label>
										<textarea  id="descricaoDemanda" name="descricaoDemanda"
										cols="30" rows="10" class="form-control"
										placeholder="Ex: Demanda Urgente!!!!."></textarea> 
								</div>

								<div class="form-group">
								 <input type="hidden" name="status" value="Não Iniciado" />
								</div>
								<div class="form-group">
								 <input type="hidden" name="projeto_idProjeto" value="${demanda.getProjeto().getIdProjeto()}" />
								</div>
							<div class="col-md-12">
								<button class="btn pi-btn btn-lg btn-block" value="criar_demanda">Salvar Demanda</button>
							</div>

						</div>
						</div>
					</form>
					</div>
					</section>
				</div>
			</div>
					<jsp:include page="dev.jsp" />
					<jsp:include page="footer.jsp" />
					<script src="js/mask.js"></script>
</body>
</html>