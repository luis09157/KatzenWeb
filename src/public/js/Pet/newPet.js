$( document ).ready(function() {
    getListPets();
    getSexo();
    getEspecie();
    getCliente();
   


    $('#formPet').on('submit', function(e) {
        e.preventDefault();
        var dataForm = convertFormToJSON($(this));        
        addPet(dataForm);
    });

    
    $( "#especiePet" ).on( "change", function() {
        getRaza($(this).val());
    } );


});

function convertFormToJSON(form) {
    return $(form)
      .serializeArray()
      .reduce(function (json, { name, value }) {
        json[name] = value;
        return json;
      }, {});
  }

function getSexo(){
    $.get( "/api/spinner/sexo", function( data ) {

    for(var i = 0 ; i < data[0].length; i++){
      $("#sexoPet").append("<option value='"+ data[0][i].idSexo +"'>"+ data[0][i].sexo +"</option>");
    }
    $('#sexoPet').selectpicker('refresh');
  });
}

function getEspecie(){
  $.get( "/api/spinner/especie", function( data ) {

    for(var i = 0 ; i < data[0].length; i++){
      $("#especiePet").append("<option value='"+ data[0][i].idEspecie +"'>"+ data[0][i].especie +"</option>");
    }
    $('#especiePet').selectpicker('refresh');
  });
}


function getCliente(){
  $.get( "/api/spinner/cliente", function( data ) {

    for(var i = 0 ; i < data[0].length; i++){
      $("#clientePet").append("<option value='"+ data[0][i].idCliente +"'>"+ data[0][i].cliente +"</option>");
    }
    $('#clientePet').selectpicker('refresh');
  });
}


function getRaza(v_idEspecie){

    $.ajax({
      url: '/api/spinner/raza', // url where to submit the request
      type : "POST", // type of action POST || GET
      dataType : 'json', // data type
      data : {
        "idEspecie" : v_idEspecie
      } , // post data || get data
      success : function(data) {

        console.log(data);

        for(var i = 0 ; i < data[0].length; i++){
          $("#razaPet").append("<option value='"+ data[0][i].idRaza +"'>"+ data[0][i].raza +"</option>");
        }
        $('#razaPet').selectpicker('refresh');
      },
      error: function(xhr, resp, text) {
          console.log(xhr, resp, text);
      }
  })
}

function addPet(dataForm){
    $.ajax({
        url: '/api/pet',
        type : "POST", 
        dataType : 'json', 
        data : dataForm , 
        success : function(result) {
            console.log(result);
            $("#listPets").dataTable().fnDestroy();
            getListPets();
            resetAddPet();
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}

function getListPets(){
  $('#listPets').DataTable( {
    ajax: "/api/pet",
    columns: [
        { data: 'idPaciente' },
        { data: 'nombre' },
        { data: 'peso' },
        { data: 'sexo' },
        { data: 'especie' },
        { data: 'raza' },
        { data: 'fechaNacimiento' },
        { data: 'color' },
        { data: 'img' },
        { data: 'cliente' }
    ]
} );
}


function resetAddPet(){
  $("#cerrarModal").click();
  $("#nombrePet").val("");
  $("#pesoPet").val("");
  $("#colorPet").val("");
  $("#imgPet").val("");
  $("#sexoPet").val("-1");
  $('#sexoPet').selectpicker('refresh');
  $("#especiePet").val("-1");
  $('#especiePet').selectpicker('refresh');
  $("#razaPet").val("-1");
  $('#razaPet').selectpicker('refresh');
  $("#clientePet").val("-1");
  $('#clientePet').selectpicker('refresh');
  $("#fechaNacimientoPet").val("");
}