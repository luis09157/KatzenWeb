$( document ).ready(function() {
    console.log("vamons perro");
    $("#btn_error").hide();
    getListCamping();

    $('#formCamping').on('submit', function(e) {
        e.preventDefault();
        var dataForm = convertFormToJSON($(this));        
        addCamping(dataForm);
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

function addCamping(dataForm){

  console.log(dataForm);
    $.ajax({
        url: '/api/camping',
        type : "POST", 
        dataType : 'json',
        data : dataForm ,
        success : function(result) {

            if(result.errors.length > 0){
                $("#btn_error").click();
                $("#txt_msgError").html(result.errors[0].msg);
                return;
              }

            $("#listCamping").dataTable().fnDestroy();
            getListCamping();
            resetAddCamping();
           
            console.log(result);
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}

function getListCamping(){
  
  $('#listCamping').DataTable( {
    ajax: "/api/camping",
    columns: [
        { data: 'idCampaña' },
        { data: 'nombre' },
        { data: 'fechaCampaña' }
    ]
} );
}


function resetAddCamping(){
  $("#cerrarModal").click();
  $("#nombre").val("");
  $("#fechaCampaña").val("");
}