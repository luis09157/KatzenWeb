$( document ).ready(function() {
    var urlSize = $(location).attr('href').split("/").length - 1;
    getPet($(location).attr('href').split("/")[urlSize]);

});
function getPet(id){
    $.ajax({
        url: '/api/pet/' + id,
        type : "GET", 
        dataType : 'json', 
        success : function(result) {
            console.log(result.data[0]);
            setPaciente(result.data[0]);
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}


function setPaciente(data){
    $("#txt_nombrePaciente").text(data.nombre);
    $("#txt_fechaNacimiento").text(data.fechaNacimiento);
    $("#txt_especie").text(data.especie);
    $("#txt_raza").text(data.raza);
    $("#txt_color").text(data.color);

    $("#imgPet").attr("src",data.img);
    

    if(data.sexo == "HEMBRA"){
        $("#radioHembra").prop('checked',true);
        $("#radioMacho").prop('checked',false);
    }else{
        $("#radioMacho").prop('checked',true);
        $("#radioHembra").prop('checked',false);
    }
}
