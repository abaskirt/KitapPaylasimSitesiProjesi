$(document).ready(function(){
    $("#register").click(function(){

        var name = $("#name").val();
        var surname = $("#surname").val();
        var mail = $("#mail").val();
        var userName = $("#userName").val();
        var password = $("#password").val();
        
        if(name == "" || surname == "" || mail == "" || userName == "" || password == ""){
            $(".uyari").html("<div class='alert alert-danger' role='alert'>Lütfen boş alan bırakmayınız.</div>");
        }else if(userName.length < 3){
            $(".uyari").html("<div class='alert alert-danger' role='alert'>Kullanıcı adı 3 karakterden az olamaz.</div>");
        }else if(password.length < 8){
            $(".uyari").html("<div class='alert alert-danger' role='alert'>Şifre 8 karakterden az olamaz.</div>");
        }else{
            $.ajax({
            type: 'POST',
            url: 'registercontrol.php',
            data: 'name=' + name + '&surname=' + surname + '&mail=' + mail + '&userName=' + userName + '&password=' + password,
            success: function(sonuc){
                $(".uyari").html("<div class='alert alert-info' role='alert'>"+ sonuc +"</div>");
            } 

        });
        }
        
        
       

    });
});
