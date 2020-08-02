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
                            <li class="breadcrumb-item"><a href="listar_Projetos">Home Administrador</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Clientes</li>
                    </ol>
            </nav>
            <!-- Fim Breadcrumb -->
             <form action="listar_Clientes" method="post">
              <div class="panel col-md-12">
                <div class="mx-4 painel-heading ">
                        <button class="btn-md  pi-btnVoltar border-0" alt="home" title="home"><a href="listar_Projetos"><i
                            class="fas fa-arrow-left mr-2"></i></a></button>
                    <h1>Clientes</h1>
                </div>
                <section>
                    <hr class="pi-hr-color">
                    <div class=" px-5 panel col-md-12">
                        <div class="panel-heading ">
                        </div>
                        <div class="panel-body table-responsive">
                            <table class="pi-tableHomeAnalista table table-striped  table-hover " width="100%">
                                <thead class="pi-bg-primary ">
                                    <tr>
                                    	<th scope="col">#</th>
                                        <th scope="col">Razão Social</th>
                                        <th scope="col">endereco</th>
                                        <th scope="col">CNPJ</th>
                                        <th scope="col ">Telefone</th>
                                        <th scope="col">Setor</th>
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                 	<c:forEach var="cliente" items="${listaCliente}">
                                 		<tr>
                                 			<td>
                                               ${cliente.idCliente }
                                            </td>
                                            <td>
                                                ${cliente.razaoSocial }
                                            </td>
                                            <td>
                                                ${cliente.endereco }
                                            </td>
                                             <td>
                                                ${cliente.cnpj }
                                            </td>
                                             <td>
                                                ${cliente.telefone }
                                            </td>
                                             <td>
                                                ${cliente.setor }
                                            </td>
                                        </tr>
                                 	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                <section>
                    <hr>
                    <div class="pi-footer text-center  fixed-bottom" style="color:black">
                        Desenvolvido com <b class="pi-primary">â¥</b> por <b> Aposentados por invalidez</b>
                    </div>
                </section>
            </div>
            </form>
        </div>
    </div>

    
    
    <div class="modal fade" id="ModalProjetos" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header ">
                        <h5 class="modal-title" id="ModalLabel">Projetos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12">
                            <table class="table-responsive table-bordered align-middle" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nome</th>
                                        <th scope="col">Tempo</th>
                                        <th scope="col">Analista</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Sistema de AdminsitraÃ§Ã£o</td>
                                        <td>90 dias</td>
                                        <td>John Doe</td>
                                        <td>Em andamento</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Sistema de AprovaÃ§Ã£o</td>
                                        <td>90 dias</td>
                                        <td>John Doe</td>
                                        <td>Concluido</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>  
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
    </div>

    <div class="modal fade" id="ModalCalendar" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header ">
                        <h5 class="modal-title" id="ModalLabel">Agenda</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class=" col-md-12 col-sm-12 well pull-right-lg" style="border:0px solid px-5">
                               
                                <div class="col-md-12" style="padding:0px;">
                                  <br>
                                    <table class="table table-bordered table-style table-responsive">
                                      <tr>
                                        <th colspan="2"><a href="?ym=<?php echo $prev; ?>"><span class="glyphicon glyphicon-chevron-left"></span></a></th>
                                        <th colspan="3"> Setembro - 2018<!--?php echo $html_title; ?--></th>
                                        <th colspan="2"><a href="?ym=<?php echo $next; ?>"><span class="glyphicon glyphicon-chevron-right"></span></a></th>
                                      </tr>
                                      <tr>
                                        <th>D</th>
                                        <th>S</th>
                                        <th>T</th>
                                        <th>Q</th>
                                        <th>Q</th>
                                        <th>S</th>
                                        <th>S</th>
                                      </tr>
                                      <tr>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>4</td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>7</td>
                                      </tr>
                                      <tr>
                                        <td>8</td>
                                        <td>9</td>
                                        <td>10</td>
                                        <td class="today">11</td>
                                        <td class="today">12</td>
                                        <td>13</td>
                                        <td>14</td>
                                      </tr>
                                      <tr>
                                        <td>15</td>
                                        <td>16</td>
                                        <td>17</td>
                                        <td>18</td>
                                        <td>19</td>
                                        <td>20</td>
                                        <td>21</td>
                                      </tr>
                                       <tr>
                                        <td>22</td>
                                        <td>23</td>
                                        <td>24</td>
                                        <td>25</td>
                                        <td>26</td>
                                        <td>27</td>
                                        <td>28</td>
                                      </tr>
                                        <tr>
                                        <td>29</td>
                                        <td>30</td>
                                        <td>31</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                      </tr>
                                      
                                      <!--?php
                                        foreach ($weeks as $week) {
                                          echo $week;
                                        };
                                      ?-->
                                    </table>
                            
                                </div>
                              </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>



   <jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
	 		
</body>
</html>