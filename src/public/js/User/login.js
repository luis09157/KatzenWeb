$( document ).ready(function() {
    console.log("animo amigos")
    $('#formLogin').on('submit', function(e) {
        e.preventDefault();
        var dataForm = convertFormToJSON($(this));        
        auth(dataForm);
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

function auth(dataForm){


    $.ajax({
        url: '/api/auth',
        type : "POST", 
        dataType : 'json',
        data : dataForm ,
        success : function(result) {
            console.log(result);
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}

