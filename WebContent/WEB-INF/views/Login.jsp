<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt">
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/analista.css">
     <link rel="stylesheet" href="css/app.css">
     <link rel="stylesheet" href="css/text.css">
     <link rel="stylesheet" href="css/card.css">
       <link rel="stylesheet" href="css/form.css">
       <link rel="stylesheet" href="css/color.css">
        <link rel="stylesheet" href="css/button.css">
        <link rel="stylesheet" href="css/footer.css">
    <title>Controle de Demandas</title>
</head>
<body class="container-color">
      <div class="container ">
        <div class="row pi-container justify-content-center ">
            <div class="col-md-4 align-self-center pi-border-box-shadow  pi-background-form ">
                <div class="text-center py-3">
                        <h5 class="mb-4">Iniciar sessão</h5>
                <img src="img/ProjectForce.png" alt="" class="img-fluid" width="100px">
            </div>   
                 <form action="Entrar" method="POST">
                  
                    <div class="form-group">
                        <input id="email" name="email" type="text" class="form-control" placeholder="Usuário" required>
                    </div>
                    <div class="form-group">
                        <input id="senha" name="senha" type="password" class="form-control" placeholder="Senha" required>
                    </div>
                    <button class="btn pi-btn btn-lg btn-block" value="Entrar">Entrar</button>

                    <div class="py-3 boder-top">
                        <a href="" data-toggle="modal" data-target="#modalEsqueciAsenha" class=" text-black text-center  border-right-0 border-left-0 border-top-0">Esqueceu a senha?</a>
                    </div>
                </form>
                </div>
            </div>
           	<jsp:include page = "dev.jsp" />
        </div>


    <!-- MODAL ESQUECI A SENHA     -->
        <div class="modal fade" id="modalEsqueciAsenha" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                    Esqueceu a senha?
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body col-md-12">
                    <form method="POST" action="" class="text-center">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Digite seu e-mail:</label>
                            <input id="email" name="email" value="" type="text" class="form-control" placeholder="E-mail" required>
                        </div>
                        <button type="submit"class="btn pi-btn btn-lg btn-block">Enviar</button>
                    </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <!-- <button type="button" class="btn btn-primary">Enviar</button> -->
                </div>
              </div>
            </div>
        </div>
     


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>