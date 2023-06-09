$( document ).ready(function() {
    $("#btn_mensaje").hide();
    isLoginSaved();

    $('#formLogin').on('submit', function(e) {
        e.preventDefault();
        var dataForm = convertFormToJSON($(this));        
        auth(dataForm);
    });

    $('#recuerdameLog').change(function() {
        if(!this.checked) {
            localStorage.clear();
        }
              
    });


});

function isLoginSaved(){
    if(localStorage.getItem('username') != null && localStorage.getItem('password') != null){
        $("#username").val(localStorage.getItem('username'));
        $("#password").val(localStorage.getItem('password'));
        $("#recuerdameLog").prop('checked', true)
    }
}

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
           
            console.log(result.data[0].EXITO)
            if(result.data[0].EXITO == 1){
                if($("#recuerdameLog").is(":checked")){
                    localStorage.setItem('username', $("#username").val());
                    localStorage.setItem('password', $("#password").val());
                    localStorage.setItem('isLogin', true);
                }
                window.location.replace("/api/home");
               
                
            }else{
                $("#txt_mensaje").html(result.data[0].MENSAJE);
                $("#btn_mensaje").click();
            } 
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}

