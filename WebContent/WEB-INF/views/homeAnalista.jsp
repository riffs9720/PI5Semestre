<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<jsp:include page = "header.jsp" />
<body onload="tests()">
    <div class="wrapper">
    	<jsp:include page = "sideBar.jsp" />
	 	<div id="content">
	 	<!-- navBar -->
	 	 	<jsp:include page = "navBar.jsp" />
	 		<!-- Breadcrumb -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Home Analista</li>
                </ol>
            </nav>
            <!-- Fim Breadcrumb -->
			<section>
                <div class=" px-5 panel">
                	<form action="listar_demandaAnalista" method="post">
                	<!-- <input type="text" id="usuario" value="3"> -->
                    <div class="panel-heading">
                        <h1 class=" my-5"><a href="listar_demandaAnalista">Painel de controle</a></h1>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="pi-tableHomeAnalista table table-striped  table-hover " width="20%">
                            <thead>
                                <tr>
                                	<th scope="col">#</th>
                                    <th scope="col">Demanda</th>
                                    <th scope="col">Projeto</th>
                                    <th scope="col">Horas Limites</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Opções</th>
                                </tr>
                            </thead>
                            <tbody>
                                	<c:forEach var="Demanda" items="${listaDemandaAnalista}">
                                       <tr>
                                       		<td>
                                               ${Demanda.idDemanda }
                                            </td>
                                            <td>
                                                ${Demanda.nomeDemanda }
                                            </td>
                                            <td >
                                                ${Demanda.projeto.nomeProjeto}
                                            </td>
                                            <td>
                                                ${Demanda.tempoDemanda }
                                            </td>
                                            <td>
                                               ${Demanda.status}
                                            </td>
		                                    <td class="list-unstyled CTAs">
		                                       
		                                            <a class="btn-lg pi-btnOpcoes" href="visualizar_demanda?idDemanda=${Demanda.idDemanda }"><i class="fas fa-hourglass-start mr-2"></i>Demanda</a>
		                                       
		                                    </td>
	                                	</tr>
	                                </c:forEach>
                         
                            </tbody>
                        </table>
                    </div>
                    </form>
                </div>
            </section>

       <jsp:include page="dev.jsp"></jsp:include>
</div>  




    <jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
    <script src="js/tests.js"></script>
     <script src="js/teste.js"></script>
</body>
</html>