var sedesUrl = 'http://localhost/app-deportes/api.php?controller=Sede&method=getAllSedes';

//Trae todas las sedes al select
$.ajax({
      url: sedesUrl,
      type: 'GET',
      success: function(response) {
 
            var selectSedes = $('#selectSedes');
            selectSedes.empty();

            response.forEach(function(sede) {
                selectSedes.append('<option value="' + sede.id + '">' + sede.name + '</option>');
            });
      },
      error: function(xhr, status, error) {
        console.error('Error en la solicitud AJAX:', error);
      }
});

//Trae todos los deportes segun la sede del select
$('#selectSedes').change(function(){
    $('#selectAtletas').empty();
    sedeId = this.value;
    deportesUrl = 'http://localhost/app-deportes/api.php?controller=Sede&method=getDeportesBySede&id=' + sedeId;
    console.log(deportesUrl);
    $.ajax({
        url: deportesUrl,
        type: 'GET',
        success: function(response) {
              console.log(response)
   
              var selectDeportes = $('#selectDeportes');

              selectDeportes.empty();

              response.forEach(function(deporte) {
                  selectDeportes.append('<option value="' + deporte[0].id + '">' + deporte[0].name + '</option>');
              });
        },
        error: function(xhr, status, error) {
          // Manejar errores
          console.error('Error en la solicitud AJAX:', error);
        }
  });
});

//Trae todos los atletas segun el deporte del select
$('#selectDeportes').change(function(){
    deporteId = this.value;
    atletasUrl = 'http://localhost/app-deportes/api.php?controller=Deporte&method=getAtletasByDeporte&id=' + deporteId;
    console.log(deportesUrl);
    $.ajax({
        url: atletasUrl,
        type: 'GET',
        success: function(response) {
              console.log(response)
   
              var selectAtletas = $('#selectAtletas');

              selectAtletas.empty();

              response.forEach(function(atleta) {
                  selectAtletas.append('<option value="' + atleta[0].id + '">' + atleta[0].name + " " + atleta[0].lastname + '</option>');
              });
        },
        error: function(xhr, status, error) {
          // Manejar errores
          console.error('Error en la solicitud AJAX:', error);
        }
  });
});
