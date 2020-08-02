<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page = "header.jsp" />
<body>
<div class="modal fade" id="Demanda" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="panel px-5">
					<div class="painel-heading">

						<h1 class="">Demanda</h1>
					</div>
					<hr>
				
						<div class="row">
							
							<div class="col-md-6 border-right ">

								<div class="form-group">
									<label for="nomeDemanda" class="text-left">Nome da
										Demanda </label>
										${demanda.nomeDemanda }
								</div>
								
								<div class="form-group">
								<label for="usuario">Analista</label> 
									${demanda.usuario.nomeUsuario }
								</div> 
								
								
								<div class="form-group">
									<label for="tempoDemanda" class="text-left">Tempo
										Demanda</label> 
										${demanda.tempoDemanda }			
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
										${demanda.descricaoDemanda }
								</div>
								<div class="form-group">
									${demanda.status }
								</div>
							
								

							</div>
        <div class="modal-footer d-flex justify-content-between">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Voltar</button>
        </div>
        </div>
    
    </div>
  </div>
</div>
</div>
</body>
<jsp:include page = "footer.jsp" />