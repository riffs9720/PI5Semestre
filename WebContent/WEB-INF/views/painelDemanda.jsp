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
                      <li class="breadcrumb-item"><a href="homeAnalista">Home Analista</a></li>
                      <li class="breadcrumb-item active" aria-current="page">Painel de Controle</li>
                    </ol>
                  </nav>
                  
	             	<div class="panel ">
                    <div class="mx-4 painel-heading ">
                    </div>
                        <hr class="pi-hr-color">
                        <div class=" panel ">
                            <div class="mx-2 painel-heading">
                                <h3 class="mx-4">Status atual da demanda</h3>
                            </div>
                            <form action="mudarStatus" method="post">
                            <div class="panel-body table-responsive">
                                <table class="pi-tableHomeAnalista table table-striped  table-hover ">
                                    <thead class="">
                                        <tr>
                                            <th scope="col">Status</th>
                                            <th scope="col">Alterar Status</th>
                                             <th scope="col" >Opção</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                <tr>
                                    <td class="align-middle" width="40%">
                                        <p class=" pi-emAndamento  my-2 text-justify"><i class="fas fa-thumbtack mx-2"></i>${demanda.status}</p>
                     
                                    </td>
                                    <td class="align-middle" width="40%">
                             			<select name="status" class="form-control">
                            				<option selected disabled>Selecione a opção</option>
                            				<option>Em andamento</option>
                            				<option>Almoço</option>
                             				<option>Finalizada</option>
                        				</select>
                        			</td>
                       					<td class="align-middle" width="20%">
                       					<input type="hidden" name="idDemanda" value="${demanda.idDemanda }" />
                         				<input type="submit" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    </form>
                </div>
            </div>
        <section class="">
            <div class="col-md-12 col-sm-12">
                <div class="panel">
                    <hr class="pi-hr-color">
                    <div class="painel-heading">
                        <h3 class="mx-4">Demanda</h3>
                            <div class="panel-body table-responsive"> 
                                <table class="pi-tableHomeAnalista table table-striped  table-hover " >
                                    <thead class="pi-bg-primary">
                                        <tr>
                                         
                                            <th scope="col">Demanda</th>
                                            <th scope="col">Descrição</th>
                                            <th scope="col">Horas Limites</th>
                                            <th scope="col">Projeto</th>
                                             <th scope="col">Status</th>
                                             <th scope="col">Opções</th>
                                        </tr>
                                    </thead>
                            <tbody>
                              
	                                	<tr>
	                                    
	                                      	<td class="align-middle">${demanda.nomeDemanda }</td>
		                                    <td class="align-middle">${demanda.descricaoDemanda }</td>
		                                    <td class="align-middle">${demanda.tempoDemanda }</td>
		                                    <td class="align-middle">${demanda.projeto.nomeProjeto }</td>
		                                    <td class="align-middle">${demanda.status }</td>
		                                    <td class="align-middle"> 
		                                    	 <div class="btn-group" role="group" aria-label="Basic example">
			                                            <a class="btn-lg btn btn-secondary" href="visualizar_demanda?idDemanda=${demanda.idDemanda}" title="Visualizar" data-target="#Demanda" data-toggle="modal">
			                                           	<i class="fas fa-eye"></i></a>
			                                         
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Editar" data-target="#modalEdit" data-toggle="modal"><i class="fas fa-edit"></i></button>
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Excluir" data-target="#modalDelete" data-toggle="modal"><i class="fas fa-trash-alt"></i></button>
			                                     </div>
		                                    
		                                    </td>
                            			</tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
        </section>
        <section>
        	  <div class="col-md-12 col-sm-12">
                <div class="panel">
                    <hr class="pi-hr-color">
                    <div class="painel-heading">
                        <h3 class="mx-4">Recursos</h3>
                        	<div class="px-2">
                        		 <a href="novo_Comentario?idDemanda=${demanda.idDemanda}"  type="button"  title="Enviar Comentário" class="btn-sm pi-btnComentario ">
			                                  <i class="fas fa-plus fa-1x mr-2"></i>Comentário
			                      </a>
                        	</div>
                            <div class="panel-body table-responsive"> 
                                <table class="pi-tableHomeAnalista table table-striped  table-hover " >
                                    <thead class="pi-bg-primary">
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Comentários</th>
                                             <th scope="col">Opções</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<tr>
                                    		 	<td class="align-middle">${recursos.idRecursos }</td>
                                    		 	<td class="align-middle">${recursos.comentarios }</td>
                                    	</tr>
                                    
                                    </tbody>
        						</table>
        					</div>
        			</div>
        		</div>
        	</div>
        	
        </section>
                <jsp:include page="dev.jsp"></jsp:include>
            </div>
        </div>
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


<!--     modal - Editar Comentário -->
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
                            <input textarea type="text" id="form7" class="md-textarea form-control" rows="4" >Alguma coisa.
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Salvar</button>
                </div>
            </div>
        </div>
    </div>
<!--     fim modal -->

<!--     modal - Excluir Comentário -->
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
                    <h6>#1 ComentÃ¡rio</h6>
                        <p class="text-justify pi-text-black">Deseja realmente excluir cometário, #1 Comentário?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">fechar</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Excluir</button>
                </div>
            </div>
        </div>
    </div>
<!--     fim modal -->
         
<!--     modal - Enviar Comentário -->
	<form action="criar_comentario" method="post">
    <div class="modal fade" id="ModalComentario" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Comentários</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body col-sm-1-1" style="display: inline;">
               		<div class="form-group">
							 <input type="hidden" name="idDemanda" value="${demanda.nomeDemanda }" />
					</div>
                     <div class="form-group">
		                                <label for="comentarios" class="text-left">Comentário</label>
		                                <textarea name="comentarios" id="comentarios" cols="30" rows="10" class="form-control" placeholder="Ex: Analista com 5 anos de experiÃªncia em Front-End."></textarea>
		             </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" value="criar_comentario">Salvar</button>
                </div>
            </div>
        </div>
    </div>
    </form>
<!--     fim modal -->

<!--     modal - Atualizar -->
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
<script src="js/filtre.js"></script>
<jsp:include page = "modalCadastroDemanda.jsp" />
</body>
</html>