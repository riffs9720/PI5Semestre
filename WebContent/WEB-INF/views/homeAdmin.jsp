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
            	<!--<section>
            	<div class="col-md-6 ">
            		<div class="card">
            	 		<div class="card-header">Gráficos</div>
            	
        		  <canvas id="pie-chart" width="80" height="40"></canvas>
        		
        		 </div>
</div>
        		  
        		</section>-->
      			<section>
      				<div class="col-md-12 panel-heading">
      					<h5 class="">Buscar Projetos</h5>
                        <hr class="pi-hr-color">
                    </div>
                    <form>
                    	<div class ="row px-3">
                        	<div class="col-md-3">
                        		<div class="form-group">
                        			<label for="selectMesBusca">Por mês</label>
                        				<select class="form-control" id="selectMesBusca">
											<option>Escolha o mês</option>
											<option value="01">Janeiro</option>
											<option value="02">Fevereiro</option>
											<option value="03">Março</option>
											<option value="04">Abril</option>
											<option value="05">Maio</option>
											<option value="06">Junho</option>
											<option value="07">Julho</option>
											<option value="08">Agosto</option>
											<option value="09">Setembro</option>
											<option value="10">Outubro</option>
											<option value="11">Novembro</option>
											<option value="12">Dezembro</option>
										</select>
									</div>
                            	</div>
                            	<div class="col-md-3">
                            		<div class="form-group">
									    <label for="calendarioBusca">Por calendário</label>
									    <input type="date" class="form-control" id="calendarioBusca" aria-describedby="calendario">
									</div>
								</div>
                            	<div class="col-md-3">
	                            	<div class="form-group">
									    <label for="clienteBusca">Por cliente</label>
									    <input type="text" class="form-control" id="clienteBusca"  placeholder="Ex: Coca-cola">
									</div>
                            	</div>
                            	<div class="col-md-3">
	                            	<div class="form-group">
									    <label for="usuarioBusca">Por usuário</label>
									    <input type="email" class="form-control" id="usuarioBusca"  placeholder="Ex: Alvo Martins">
									</div>
                            	</div>
                            	<div class="mx-3">
                            		<button type="submit" class="btn btn-primary">Buscar</button>
                            	</div>
                            </div>
   						</form>
                    
                    </section>
               		<section>
               			<form action="listar_Projetos" method="post">
                			<div class="panel-body table-responsive px-3">
		                    	<table class="pi-tableHomeAnalista table table-striped  table-hover " >
		                        	<thead class="">
				                    	<tr>
					                    	<th scope="col">#</th>
					                        <th scope="col">Projeto</th>
					                        <th scope="col">Cliente</th>
					                       	<th scope="col">Valor</th>
					                        <th scope="col">Tempo</th>
					                        <th scope="col">Status</th>
					                        <th scope="col">Opções</th>
					                        <th scope="col"></th>
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
				                                <td >
				                                	${Projeto.cliente.razaoSocial}
				                                </td>
				                                <td>
				                                	${Projeto.valor }
				                                </td>
				                                <td>
				                                	${Projeto.duracao}
				                                </td>
				                                <td>
				                                	${Projeto.status}
				                                </td>
				                                <td class="actions">
				                                <a href="listar_demanda?Projeto.idProjeto=${Projeto.idProjeto }" class="btn-sm pi-btnOpcoes ">
				                                	
				                                	<i class="fas fa-eye mr-2"></i>Visualizar Projeto</a>
				                                </td>
				                                <td>
				                                	<a href="nova_demanda?Projeto.idProjeto=${Projeto.idProjeto }"  class="btn-sm pi-btnOpcoes "><i class="fas fa-plus fa-1x mr-2"></i>Cadastrar Demanda</a>
				                                </td>
				                           	</tr>
				                     	</c:forEach>
				                     </tbody>
				               </table> 
                           </div>
                        </form>
                </section>
               	
                <section >
                	<div class="col-md-12 panel-heading">
                    	<!-- <h5 class="">Buscar Projetos</h5> -->
                        <hr class="pi-hr-color">
                     </div>
                     <div class="row px-5 ">
						<div class="col-md-4 ">
							<a href="novo_Usuario" class="w-100  btn btn-lg pi-color1 text-white">
								<img src="img/boy-white.svg" alt="" class="mr-2" height="50px">
          						 Novo Analista 
          					</a>
          					<div class="card hovercard ">
          						<a href="listar_Analistas" >
                                	<div class="pi-color1">
                                    	<h2 class="pt-5 text-white">Analistas</h2>
                                    	<p class="pi-text-black pb-5">Últimos analistas cadastrados</p>
                                	</div>
                                </a>
                                <div class="avatar">
                                    <img src="img/boy.svg" alt="" style="background: white" />
                                </div>
								<c:forEach var="usuario" items="${usuarios}">
                                	<div class="text-left py-2 pl-1 border-bottom pi-textSize-analista"> ${usuario.nomeUsuario}</div>      
                            	</c:forEach>
                        	</div>
                        	
                        </div>
                        
						<div class="col-md-4 ">
							<a href="novo_Projeto" class="w-100  btn btn-lg pi-color3 text-white">
								<img src="img/briefing-white.svg" alt="" class="mr-2" height="50px">
							 	Novo projeto
							</a>
							<div class="card hovercard">
								<a href="listar_Projetos" >
                        			<div class = "pi-color3 pt-5">
                        				<h2 class="text-white">Projetos</h2>
                            			<p class="pi-text-black pb-5">Últimos projetos cadastrados</p>
                               		</div>
                            	 </a> 
                        		<div class="avatar">
                        			<img src="img/briefing.svg" alt="" style="background: white" />
                        		</div>
								<c:forEach var="Projeto" items="${listaProjeto}">
                        			<div class="text-left py-2 pl-1 pi-textSize-analista"> ${Projeto.nomeProjeto }</div>
                        		</c:forEach>
							</div>
						</div>

                		<div class="col-md-4 ">
							<a href="cadastrarCliente" class="w-100  btn btn-lg pi-color2 text-white">
								<img src="img/customer-white.svg" alt="" class="mr-2" height="50px">
								 Novo Cliente
							</a>
							<div class="card hovercard">
								<a href="listar_Clientes">
	                    			<div class="pi-color2">
	                        			<h2 class="pt-5 text-white"> Clientes</h2>
	                            		<p class="pi-text-black pb-5">Últimos clientes cadastrados</p>
	                        		</div>
	                        	</a>
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
			</div>
		</div>
	</div>

	<jsp:include page = "footer.jsp" />
	<script src="js/filtre.js"></script>
	<script src="js/teste.js"></script>
	</body>
</html>