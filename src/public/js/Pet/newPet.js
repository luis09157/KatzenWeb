$( document ).ready(function() {
    getListPets();


    $('#formPet').on('submit', function(e) {
        e.preventDefault();
        var dataForm = convertFormToJSON($(this));        
        addPet(dataForm);
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

function addPet(dataForm){


    $.ajax({
        url: '/api/pet', // url where to submit the request
        type : "POST", // type of action POST || GET
        dataType : 'json', // data type
        data : dataForm , // post data || get data
        success : function(result) {
            // you can see the result from the console
            // tab of the developer tools
            console.log(result);
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}

function getListPets(){

  $.get( "/api/pet", function( data ) {

    for(var i = 0 ; i < data[0].length; i++){

        $("#listPets").append("<tr>"+
                                  "<th scope='row'>"+ data[0][i].idPaciente +"</th>"+
                                  "<td>"+ data[0][i].nombre +"</td>"+
                                  "<td>"+ data[0][i].peso +"</td>"+ 
                                  "<td>"+ data[0][i].sexo +"</td>"+
                                  "<td>"+ data[0][i].especie +"</td>"+
                                  "<td>"+ data[0][i].fechaNacimiento +"</td>"+
                                  "<td>"+ data[0][i].color +"</td>"+
                                "</tr>");
    }
  });
}