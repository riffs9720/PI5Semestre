<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<jsp:include page = "header.jsp" />
<body onload="listar_Projetos">
	<div class="wrapper">
		<jsp:include page = "sideBar.jsp" />
	 	<div id="content">
	 	<!-- navBar -->
	 	 	<jsp:include page = "navBar.jsp" />
	 		<!-- Breadcrumb -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">Home Administrador</li>
                </ol>
            </nav>
            <!-- Fim Breadcrumb -->
            <div class="panel">
              	<form action="listar_Projetos" method="post">
                	<div class="mx-4 painel-heading ">
                    	<!-- <h1>Painel de controle</h1> -->
              
                	</div>
                	<section>
                    	<hr class="pi-hr-color">
                    	<div class=" px-5 panel">
                        	<div class="panel-heading">
                            	<h1 class="">Projetos</h1>
                        	</div>
                 
                        	<div class="panel-body table-responsive">
                            	<table class="pi-tableHomeAnalista table table-striped  table-hover " width="20%">
                                	<thead class="">
                                    	<tr>
	                                        <th scope="col">#</th>
	                                        <th scope="col">Projeto</th>
	                                        <th scope="col">Cliente</th>
	                                        <th scope="col">Valor</th>
	                                        <th scope="col">Tempo</th>
	                                        <th scope="col">Analista</th>
	                                        <th scope="col">Status</th>
	                                        <th scope="col">Opções</th>
	                                    </tr>
                                	</thead>
                                <tbody>
                                	<c:forEach var="Projeto" items="${listaProjeto}">
                                       <tr>
                                       		<td>
                                               ${Projeto.idProjeto }
                                            </td>
                                            <td>
                                                ${Projeto.nomeProjeto }
                                            </td>
                                            <td>
                                                ${Projeto.cliente.razaoSocial}
                                            </td>
                                            <td>
                                                ${Projeto.valor }
                                            </td>
                                            <td>
                                               ${Projeto.duracao}
                                            </td>
                                             <td>
                                               Joao
                                            </td>
                                            <td>
                                               Iniciado
                                            </td>
                                            <td class="actions">
                                               <button type="button" class="btn-lg pi-btnOpcoes ">
                                                <a href="visualizar_Demandas?idProjeto=${Projeto.idProjeto }"><i class="fas fa-eye mr-2"></i>Visualizar Projeto</a></button> 
                                            	 
                                            
                                            </td>
                                            <td>
                                            	<%-- <button type="button" class="btn-lg pi-btnOpcoes ">
                                                <a href="nova_demanda?Projeto.idProjeto=${Projeto.idProjeto }"><i class="fas fa-eye mr-2"></i>Cadastrar Demanda</a></button> --%>
                                            	<button type="button" class="btn-lg pi-btnOpcoes ">
                                                <a href="nova_demanda?Projeto.idProjeto=${Projeto.idProjeto }"><i class="fas fa-eye mr-2"></i>Cadastrar Demanda</a></button>
                                            
                                            </td>
                                        </tr>
                            		</c:forEach>
                                </tbody>
                            </table>
                        </div>
					</div>
               	</section>
               	
                <section >
                    <hr class="pi-hr-color">
					<div class="row px-5 ">
                        <div class="col-md-4 ">
                        	
                            <button class="w-100  btn btn-lg pi-color1 text-white">
                            	<img src="img/boy-white.svg" alt="" class="mr-2" height="50px">
                    
                            	<a href="novo_Usuario"> Novo Analista </a>
                            </button>
							<div class="card hovercard ">
                                <div class="pi-color1">
                                    <h2 class="pt-5"><a href="listar_Analistas">Analistas</a></h2>
                                    <p class="pi-text-black pb-5">Últimos analistas cadastrados</p>
                                </div>
                                <div class="avatar">
                                    <img src="img/boy.svg" alt="" style="background: white" />
                                </div>
									<c:forEach var="usuario" items="${lista}">
                                 		 <div class="text-left py-2 pl-1 border-bottom pi-textSize-analista"> ${usuario.nomeUsuario}</div>      
                                 	</c:forEach>
                               
                              
							</div>
                        </div>
						<div class="col-md-4 ">
						<button class="w-100  btn btn-lg pi-color3 text-white">
							<img src="img/briefing-white.svg" alt="" class="mr-2" height="50px">
							<a href="novo_Projeto"> Novo projeto</a>
						</button>
						<div class="card hovercard">
                        	<div class="pi-color3">
                        		<a href="listar_Projetos">
                            	<h2 class="pt-5 text-white">Projetos</h2>
                            	</a>
                                <p class="pi-text-black pb-5">Últimos projetos cadastrados</p>
                            </div>
                        <div class="avatar">
                        	<img src="img/briefing.svg" alt="" style="background: white" />
                        </div>
						<c:forEach var="Projeto" items="${listaProjeto}">
                        <div class="text-left py-2 pl-1 pi-textSize-analista"> ${Projeto.nomeProjeto }</div>
                        </c:forEach>
					</div>
				</div>

                <div class="col-md-4 ">
					<button class="w-100  btn btn-lg pi-color2 text-white">
						<img src="img/customer-white.svg" alt="" class="mr-2" height="50px">
						<a href="cadastrarCliente"> Novo Cliente </a>
					</button>
    				<div class="card hovercard">
                    	<div class="pi-color2">
                        	<h2 class="pt-5 text-white"><a href="listar_Clientes"> Clientes</a></h2>
                            <p class="pi-text-black pb-5">Últimos clientes cadastrados</p>
                        </div>
                        <div class="avatar">
                        	<img src="img/customer.svg" alt="" style="background: white" />
                        </div>
    					<c:forEach var="cliente" items="${listaCliente}">
                        <div class="text-left py-2 pl-1 pi-textSize-analista"> ${cliente.razaoSocial }</div>
                        </c:forEach>
    				</div>
                </div>
             </div>
		</section>
		<jsp:include page="dev.jsp"></jsp:include>
	</form>
  </div>
</div>
        
    </div>


<script src="js/findIdProjeto.js"></script>
<jsp:include page = "modalCadastroDemanda.jsp" />
	<jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
     <script src="js/teste.js"></script>
</body>
</html>