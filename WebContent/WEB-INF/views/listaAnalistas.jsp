<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<jsp:include page = "header.jsp" />

</head>
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
                            <li class="breadcrumb-item active" aria-current="page">Analistas</li>
                    </ol>
            </nav>
            <!-- Fim Breadcrumb -->
            
            <form action="listar_Analistas" method="GET">
                 <div class="panel col-md-10">
                <div class="mx-4 painel-heading ">
                        <button class="btn-md  pi-btnVoltar border-0" alt="home" title="home"><a href="listar_Projetos"><i
                            class="fas fa-arrow-left mr-2"></i></a></button>
                    <h1>Analistas</h1>
                </div>
                <section>
                    <hr class="pi-hr-color">
                    <div class=" px-5 panel col-md-12">
                        <div class="panel-heading ">
                        </div>
                        <div class="panel-body table-responsive">
                            <table class="pi-tableHomeAnalista table table-striped  table-hover " width="20%">
                                <thead class="pi-bg-primary">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nome</th>
                                        <th scope="col">Email</th>
                                      	<th scope="col">Cargo</th>
                                      	<th scope="col">Telefone</th>
                                      	<th scope="col">Opções</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 	<c:forEach var="Usuario" items="${listaUsuario}">
                                 		<tr>
                                 			<td>
                                               ${Usuario.idUsuario }
                                            </td>
                                            <td>
                                                ${Usuario.nomeUsuario }
                                            </td>
                                            <td>
                                                ${Usuario.email }
                                            </td>
                                             <td>
                                                ${Usuario.cargo }
                                            </td>
                                             <td>
                                                ${Usuario.telefone }
                                            </td>
                                            <td class="align-middle">
                                                      <a href="calendarioAdm" class="btn btn-secondary ">Agenda</a>
                                                             
                                                   
                                                      <button type="button"  title="" data-toggle="modal" data-target="#ModalMapa" class="btn btn-secondary ">
                                                              <a href="#">Localizar</a>
                                                      </button>
                                              
                                                     <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a> 
                                                     
                                                   
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
                                    <table class="table table-bordered table-style table-responsive" style="padding-left: 50px;">
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
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Remanejar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="ModalMapa" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header ">
                            <h5 class="modal-title" id="ModalLabel">LocalizaÃ§Ã£o</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                                <div id="map" style="width:100%;height:400px;border:solid 3px lightgray"></div>
                               
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        </div>
                    </div>
                </div>
        </div>
        
         <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h4 class="modal-title" id="modalLabel">Excluir Analista</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                                </button>
                                
                            </div>
                            <div class="modal-body">
                                Deseja realmente excluir este Analista?
                            </div>
                            <div class="modal-footer">
                                <form action="excluir_Analista" method="post">
                                    <input type="hidden" name="idUsuario" value="${usuario.idUsuario}" />
                                    <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
    <script src="js/filtre.js"></script>


    <!-- Google Maps API -->
         <script>
            function myMap() {
              var mapCanvas = document.getElementById("map");
              var mapOptions = {
                center: new google.maps.LatLng(-23.568815, -46.713906), zoom: 17
              };
              var map = new google.maps.Map(mapCanvas, mapOptions);
            }
            </script>
            
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrxG3IN2zjfedlJkZg3ct78wmXgogwQcQ&callback=myMap"></script>
           
            
</body>
</html>