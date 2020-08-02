function findIdProjeto(id){
  $(function(){
    $.getJSON("visualizar_demanda?idDemanda="+demanda.idDemanda, function(data){
      console.log(data);
      $("#e-id_demanda").val(data.idDemanda);
    
    })
  });
}
