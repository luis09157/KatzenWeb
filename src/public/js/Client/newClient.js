$( document ).ready(function() {
    getListClients();

    $('#formClient').on('submit', function(e) {
        e.preventDefault();
        var dataForm = convertFormToJSON($(this));        
        addClient(dataForm);
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

function addClient(dataForm){

    $.ajax({
        url: '/api/client',
        type : "POST", 
        dataType : 'json',
        data : dataForm ,
        success : function(result) {
            $("#listClients").dataTable().fnDestroy();
            getListClients();
            resetAddClient();
           
            console.log(result);
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}

function getListClients(){
  
  
  $('#listClients').DataTable( {
    ajax: "/api/client",
    columns: [
        { data: 'idCliente' },
        { data: 'cliente' },
        { data: 'telefono' },
        { data: 'direccion' },
        { data: 'email' },
        { data: 'edad' },
        { data: 'fechaAlta' }
    ]
} );
}


function resetAddClient(){
  $("#cerrarModal").click();
  $("#nombre").val("");
  $("#apellidoP").val("");
  $("#apellidoM").val("");
  $("#telefono").val("");
  $("#direccion").val("");
  $("#edad").val("");
  $("#email").val("");
}