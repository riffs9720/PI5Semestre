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
	 		<nav aria-label="breadcrumb">
            	<ol class="breadcrumb">
                	<li class="breadcrumb-item"><a href="listar_Projetos">Home Administrador</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Painel de Controle</li>
                </ol>
            </nav>
            
              <form action="visualizar_Demandas" method="GET">
            <div class="panel ">
            	<div class="mx-4 painel-heading ">
                 	<h1>Painel de controle de demanda</h1>
                </div>
        		<section class="">
            		<div class="col-md-10 col-sm-12">
                		<div class="panel">
                    		<div class="painel-heading">
                        		<hr class="pi-hr-color">
                        		
                            	<div class="panel-body table-responsive"> 
	                                <table class="pi-tableHomeAnalista table table-striped  table-hover " >
	                                    <thead class="pi-bg-primary">
	                                        <tr>
	                                            <th scope="col">#</th>
	                                            <th scope="col">Demanda</th>
	                                            <th scope="col">Descrição</th>
	                                            <th scope="col">Horas Limites</th>
	                                            <th scope="col">Analista Responsavel</th>
	                                            <th scope="col">Status</th>
	                                            <th scope="col">Opções</th>
	                                        </tr>
	                                    </thead>
                            		<tbody>
                            		<c:forEach var="Demanda" items="${listaDemanda}">
	                                	<tr>
	                                      	<td class="align-middle">${Demanda.idDemanda }</td>
	                                      	<td class="align-middle"> ${Demanda.nomeDemanda }</td>
		                                    <td class="align-middle">${Demanda.descricaoDemanda }</td>
		                                    <td class="align-middle">${Demanda.tempoDemanda }</td>
		                                    <td class="align-middle">${Demanda.usuario.nomeUsuario }</td>
		                                    <td class="align-middle">${Demanda.status }</td>
		                                    <td class="align-middle"> 
		                                    	 <div class="btn-group" role="group" aria-label="Basic example">
			                                            <a class="btn-lg btn btn-secondary" href="visualizar_demanda?idDemanda=${Demanda.idDemanda }"  title="Visualizar" data-target="#Demanda" data-toggle="modal">
			                                           	<i class="fas fa-eye"></i></a>
			                                           	
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Editar" data-target="#modalEdit" data-toggle="modal"><i class="fas fa-edit"></i></button>
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Excluir" data-target="#modalDelete" data-toggle="modal"><i class="fas fa-trash-alt"></i></button>
			                                     </div>
		                                    
		                                    </td>
                            			</tr>
                            		</c:forEach>
			                        </tbody>
			                    </table>
			                </div>
			            </div>
			        </section>
        			<section>
            			<div class=" panel col-md-10">
                			<div class="mx-4 panel-heading">
                    			<hr class="pi-hr-color">
                        		<div class="d-flex">
                            		<div class="mr-auto px-2"><h3>Relatórios</h3></div>
                                		<div class="px-2">
		                                    <form>
		                                        <ul>
		                                            <label>
		                                                <li class="btn btn-sm pi-btnEnviar w-100" title="Enviar Arquivo">
		                                                    <i class=" fas fa-cloud-upload-alt fa-1x mr-2" aria-hidden="true"></i>Enviar Arquivo
		                                                    <input type="file" class="file-input  d-none" name="file-input" id="file-input">
		                                                </li>
		                                            </label>
		                                        </ul>
		                                    </form>   
                                		</div>
			                            <div class="px-2">
			                                <button type="button"  title="Enviar Comentário" data-toggle="modal" data-target="#ModalComentario" class="btn-sm pi-btnComentario ">
			                                        <a href="#"><i class="fas fa-plus fa-1x mr-2"></i>Comentário</a>
			                                </button>
			                            </div>
                        			</div>
                    			</div>    
                    			<div class=" table-responsive col-md-12">
                        			<table class="pi-tableHomeAnalista table  table-hover " width="20%">
			                            <thead class="pi-bg-primary">
			                                <tr>
			                                    <th scope="col">Arquivos</th>
			                                    <th scope="col">Comentários</th>
			                                    <th scope="col">Opções</th>
			                                </tr>
			                            </thead>
                            			<tbody>
			                                <tr data-target="naoIniciado">
			                                    <td class="align-middle ">
			                                        <table>
			                                            <tr>
			                                                <td scope="row" class="align-middle">Alguma coisa.pdf</td>
			                                            </tr> 
			                                        </table>
			                                    </td>
			                                    <td class="align-middle">
			                                        <table>
			                                            <tr>
			                                                <td scope="row" class="align-middle">Alguma coisa</td>
			                                            </tr> 
			                                        </table>
			                                    </td>
			                                    <td>
			                                        <div class="btn-group" role="group" aria-label="Basic example">
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Visualizar" >
			                                            <i class="fas fa-eye"></i></a></button>
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Editar" data-target="#modalEdit" data-toggle="modal"><i class="fas fa-edit"></i></button>
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Excluir" data-target="#modalDelete" data-toggle="modal"><i class="fas fa-trash-alt"></i></button>
			                                        </div>
			                                    </td>
			                                </tr>
			                            </tbody>
                        			</table>
                    			</div>
                			</section>
                			<jsp:include page="dev.jsp"></jsp:include>
            			</div>
            			</form>
        			</div>
    			</div>

    <!-- modal - View Comentário -->
    <div class="modal fade" id="modalView" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Comentários</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h6>#1 Comentário</h6>
                    <p class="text-justify pi-text-black">Modal body text goes here.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- fim modal -->

    <!-- modal - Editar Comentário -->
    <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Comentários</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body col-sm-1-1" style="display: inline;">
                    <div class="md-form">
                            <textarea type="text" id="form7" class="md-textarea form-control" rows="4" >Alguma coisa..</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Salvar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- fim modal -->

    <!-- modal - Excluir Comentário -->
    <div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Comentários</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h6>#1 Comentário</h6>
                        <p class="text-justify pi-text-black">Deseja realmente excluir cometário, #1 Comentário?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Excluir</button>
                </div>
            </div>
        </div>
    </div>
    <!-- fim modal -->
         
    <!-- modal - Enviar Comentário -->
    <div class="modal fade" id="ModalComentario" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Comentário</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body col-sm-1-1" style="display: inline;">
                    <div class="md-form">
                        <textarea type="text" id="form7" class="md-textarea form-control" rows="4" placeholder="Escreva seu comentário aqui."></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fehar</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Salvar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- fim modal -->

    <!-- modal - Atualizar -->
    <div class="modal fade" id="ModalAtualizar" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Atualizar</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body col-sm-1-1" style="display: inline;">
                    <div class="col-md-12">
                        <select id="inputState" class="form-control">
                            <option selected>Escolha</option>
                            <option>Não iniciado</option>
                            <option>Em andamento</option>
                            <option>Almoço</option>
                             <option>Finalizada</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Salvar</button>
                </div>
            </div>
        </div>
    </div>
<!-- fim modal -->
<jsp:include page = "footer.jsp" />
<jsp:include page = "modalCadastroDemanda.jsp" />
<script src="js/filtre.js"></script>
<script src="js/findIdProjeto.js"></script>
</body>
</html>