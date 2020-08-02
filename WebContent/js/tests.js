function tests(){
	$.ajax({
		  type: "get",
		  url: "/PI5Semestre_Spring/listar_demandaAnalista",
		  data: {id: $("#Usuario").val()},
		  success:function(response){
			  console.log(response);
			  console.log("foi");
			 nomeDemanda = $("#nomeDemanda").val(response.id);
			 console.log("nome de:", nomeDemanda.val());
			  
		   //your code goes here
		  }
		})
}

