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
                		<li><a href="listar_Projetos"><i
                            class="fas fa-arrow-left mr-2"></i></a>
                        </li>
                    <li class="breadcrumb-item active" aria-current="page">Home Administrador</li>
                </ol>
            </nav>
            <!-- Fim Breadcrumb -->
            <div class="panel">
					<div id="v-cal">
			<div class="vcal-header">
				<button class="vcal-btn" data-calendar-toggle="previous">
					<svg height="24" version="1.1" viewbox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
						<path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path>
					</svg>
				</button>

				<div class="vcal-header__label" data-calendar-label="month">
					March 2017
				</div>


				<button class="vcal-btn" data-calendar-toggle="next">
					<svg height="24" version="1.1" viewbox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
						<path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"></path>
					</svg>
				</button>
			</div>
			<div class="vcal-week">
				<span>Seg</span>
				<span>Ter</span>
				<span>Qua</span>
				<span>Qui</span>
				<span>Sex</span>
				<span>Sab</span>
				<span>Dom</span>
			</div>
			<div class="vcal-body" data-calendar-area="month"></div>
		</div>

		<!-- <p class="demo-picked">
			Date picked:
			<span data-calendar-label="picked"></span>
		</p> -->

	
	</div>
	
            
            <jsp:include page="dev.jsp"></jsp:include>
			</div>
		</div>
	</div>
<jsp:include page = "footer.jsp" />
<script src="js/vanillaCalendar.js" type="text/javascript"></script>
	<script>
		window.addEventListener('load', function () {
			vanillaCalendar.init({
				disablePastDays: true
			});
		})
	</script>
    <script src="js/filtre.js"></script>
     <script src="js/teste.js"></script>

</body>
</html>	
		
