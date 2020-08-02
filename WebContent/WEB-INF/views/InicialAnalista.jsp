<jsp:include page = "header.jsp" />

<body>
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header text-center components">
                <img src="img/calendar.svg" width="100px" alt="">
                <h3>Projeto Integrado</h3>
            </div>
            <ul class="list-unstyled components">
                <p class="components pi-bg-orange">Analista</p>
                <!--  <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Home</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="#">Home 1</a></li>
                            <li><a href="#">Home 2</a></li>
                            <li><a href="#">Home 3</a></li>
                    </li> 
                    <li>
                        <a href="#">About</a>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Pages</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="#">Page 1</a></li>
                            <li><a href="#">Page 2</a></li>
                            <li><a href="#">Page 3</a></li>
                        </ul>
                    </li> -->
                <li><a href="homeAnalista.html">Home</a></li>
                <li><a href="perfilAnalista.html">Perfil</a></li>
            </ul>
            <ul class="list-unstyled CTAs">
                <li>
                    <a href="Login.jsp" class="pi-btnSair"><i class="fas fa-sign-out-alt mr-2"></i>Sair</a>
                </li>
                <!--<li>
                    <a href="" class="article">Back to article</a>
                </li>-->
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <div class="d-flex flex-row-reverse">
                        <div class="p-2"><a href="Login.jsp"><i class="fas fa-sign-out-alt mr-1 fa-1x"></i>Sair</a></div>
                        <div class="p-2">Usuário:</div>
                    </div>
                </div>
            </nav>
            <!-- Breadcrumb -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Home Analista</li>
                </ol>
            </nav>
            <!-- Fim Breadcrumb -->

            <section>
                <div class=" px-5 panel">
                    <div class="panel-heading">
                        <h1 class=" my-5">Painel de contole</h1>
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
                                <tr>
                                    <th scope="row">1</th>
                                    <td class="align-middle">
                                        <div class="media">
                                            <div class="media-body">
                                                <h5>Avaliar projeto</h5>
                                                <span class=" pi-text-status float-left">14/04</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">Bradesco</td>
                                    <td class="align-middle">20 Horas</td>
                                    <td class="align-middle">
                                        <p class="pi-naoIniciado  my-2 text-justify"><i class="fas fa-thumbtack  mx-2  "></i>Não Iniciado</p>
                                    </td>
                                    <td class="list-unstyled CTAs">
                                        <button type="button" class="btn-lg pi-btnOpcoes ">
                                            <a href="painelDemanda.html"><i class="fas fa-hourglass-start mr-2"></i>Demanda</a></button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>
                                        <div class="media">
                                            <div class="media-body">
                                                <h5>Desenvolver trigger</h5>
                                                <span class="pi-text-status float-left">14/04</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">Netshoes</td>
                                    <td class="align-middle">08 Horas</td>
                                    <td class="align-middle">
                                        <p class=" pi-emAndamento  my-2 text-justify"><i class="fas fa-thumbtack mx-2"></i>Em Andamento</p>
                                    </td>
                                    <td class="align-middle">
                                        <button type="button" class="btn-lg pi-btnOpcoes ">
                                            <a href="painelDemanda.html"><i class="fas fa-hourglass-start mr-2"></i>Demanda</a></button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td class="align-middle">
                                        <div class="media ">
                                            <div class="media-body">
                                                <h5>Atualizar banco de dados</h5>
                                                <span class="media-meta  pi-text-status float-left">14/04</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle ">Netshoes</td>
                                    <td class="align-middle ">08 Horas</td>
                                    <td class="align-middle">
                                        <p class="pi-finalizado my-2 text-justify "> <i class="fas fa-thumbtack  mx-2"></i>Finalizado</p>
                                
                                    </td>
                                    <td>
                                        <button type="button" class="btn-lg pi-btnOpcoes ">
                                            <a href="painelDemanda.html"><i class="fas fa-hourglass-start mr-2"></i>Demanda</a>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

        <section>
            <hr>
            <div class="pi-footer text-center  fixed-bottom" style="color:black">
                Desenvolvido com <b class="pi-primary">♥</b> por <b> Aposentados por invalidez</b>
            </div>
        </section>
</div>  




 <jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
</body>

</html>