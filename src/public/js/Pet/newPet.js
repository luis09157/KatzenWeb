var table = null;
var fileData;
var myFile = null;


$( document ).ready(function() {
  $("#btn_error").hide();
  $("#comboCampaña").hide();
    getListPets();
    getSexo();
    getEspecie();
    getCliente();
    getCampaña();
   
    $('.radioPacienteCheck').click(function () {
        if ($('#radioPacienteCampaña').is(':checked')) {
          $("#comboCampaña").show();
        }else{
          $("#comboCampaña").hide();
        }
    });

    $('#customFile2').change(function(){
      document.getElementById('imgAvatar').src = window.URL.createObjectURL(this.files[0])
      var filereader = new FileReader();
      filereader.onload = function(event){
         fileData  = event.target.result;
      };
      myFile = $('#customFile2').prop('files')[0];  
      console.log('myfile',myFile)
     filereader.readAsDataURL(myFile)
  });

    $('#formPet').on('submit', function(e) {
        e.preventDefault();

        if(myFile == null ){
            myFile = {
              name : ""
            }
        }
        var dataForm = convertFormToJSON($(this)); 
        if(validateForm(dataForm)){
          addPet(dataForm);
        }
      
       
    });

    function validateForm(dataForm){
     if(dataForm.idSexo == "-1"){
        $("#btn_error").click();
        $("#txt_msgError").html("Selecciona una sexo.");
        return false;
      }else if(dataForm.idEspecie == "-1"){
          $("#btn_error").click();
          $("#txt_msgError").html("Selecciona una especie.");
          return false;
      }else if(dataForm.idRaza == "-1"){
          $("#btn_error").click();
          $("#txt_msgError").html("Selecciona una raza.");
          return false;
      }else if(dataForm.idCliente == "-1"){
          $("#btn_error").click();
          $("#txt_msgError").html("Selecciona un cliente.");
          return false;
      }

      return true;
    }
    
    $( "#especiePet" ).on( "change", function() {
        getRaza($(this).val());
    } );

    $('#listPets tbody').on('click', 'tr', function () {
      var idPet = table.row(this).data().idPaciente;
      window.location.replace("/api/detailPet/" + idPet);
    });

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

function getCampaña(){
  $.ajax({
    url: '/api/campingCombo', 
    type : "GET",
    dataType : 'json',
    success : function(data) {
      for(var i = 0 ; i < data.length; i++){
        $("#campañaPet").append("<option value='"+ data[i].idCampaña +"'>"+ data[i].nombre +"</option>");
      }
      $('#campañaPet').selectpicker('refresh');
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
        data : {
         'filename':myFile.name,
          'file':fileData , 
          'nombre': dataForm.nombre,
          'peso' : dataForm.peso,
          'idSexo' : dataForm.idSexo,
          'idEspecie' : dataForm.idEspecie,
          'idRaza' : dataForm.idRaza,
          'fechaNacimiento' : dataForm.fechaNacimiento,
          'color' : dataForm.color,
          'sParticulares' : dataForm.sParticulares,
          'radioPaciente' : dataForm.radioPaciente,
          'idCliente': dataForm.idCliente,
          'idCampaña': dataForm.idCampaña

          }  , 
        success : function(result) {
          console.log(result);
          if(result.errors.length > 0){
            $("#btn_error").click();
            $("#txt_msgError").html(result.errors[0].msg);
            return;
          }
           
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
 table =  $('#listPets').DataTable( {
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