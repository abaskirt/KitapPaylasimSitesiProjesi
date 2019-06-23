$(function(){
      //Flow
      
      $.getJSON("flow.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          
        if(sonuc.actiontype == "likes" && sonuc.likeType == 0){
            var veri = "<div class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='author.php?aId="+ sonuc.authorId +"'>" + sonuc.authorName + " " + sonuc.authorSurname + "</a></span> adlı yazarı beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div><div class='post-footer'><div class='input-group'> <input id='datal"+ sonuc.likeId +"' name='datal"+ sonuc.likeId +"' class='form-control' placeholder='Yorum yaz' type='text'> <span class='input-group-addon'> <button id='yoruml"+ sonuc.likeId +"'><i class='fa fa-edit'></i></button> </span></div><ul class='comments-list' id='l"+ sonuc.likeId +"'></ul> </div> </div></div>";
			$("#flow").append(veri);
			//YORUM DENEME
			$("#yoruml"+ sonuc.likeId).click(function(){
			var data = $("#datal"+sonuc.likeId).val();
            var avatar=$('#leftAvatar img').attr("src");
            var name = $('#leftName').text();
            var ctime = Math.floor(Date.now() / 1000);
            if(data == ""){
                alert("Yorum Gönderilemedi");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'commentControl.php',
                data: 'cdata=' + data + '&commentType=' + sonuc.actiontype + '&checkComment=' + sonuc.likeId,
                success: function(abc){
                    $("#l"+sonuc.likeId).prepend("<li class='comment'> <a class='pull-left' href='#'> <img class='avatar' src='"+ avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <h4 class='user'>" + name + "</h4> <h5 class='time'>" + conv(ctime) + "</h5> </div> <p>" + data + "</p> </div> </li>")
                }});
            }
			});
			//YORUM DENEME BİTİŞ
        }
        if(sonuc.actiontype == "likes" && sonuc.likeType == 1){
            var veri = "<div class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='bookpage.php?bId="+ sonuc.bookId +"'>" + sonuc.bookName + "</a></span> adlı kitabı beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div><div class='post-footer'> <div class='input-group'><input id='datal"+ sonuc.likeId +"' name='datal"+ sonuc.likeId +"' class='form-control' placeholder='Yorum yaz' type='text'> <span class='input-group-addon'> <button id='yoruml"+ sonuc.likeId +"'><i class='fa fa-edit'></i></button> </span> </div><ul class='comments-list' id='l"+ sonuc.likeId +"'></ul> </div> </div></div>";
            $("#flow").append(veri);
            //YORUM DENEME
			$("#yoruml"+ sonuc.likeId).click(function(){
			var data = $("#datal"+sonuc.likeId).val();
            var avatar=$('#leftAvatar img').attr("src");
            var name = $('#leftName').text();
            var ctime = Math.floor(Date.now() / 1000);
            if(data == ""){
                alert("Yorum Gönderilemedi");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'commentControl.php',
                data: 'cdata=' + data + '&commentType=' + sonuc.actiontype + '&checkComment=' + sonuc.likeId,
                success: function(abc){
                    $("#l"+sonuc.likeId).prepend("<li class='comment'> <a class='pull-left' href='#'> <img class='avatar' src='"+ avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <h4 class='user'>" + name + "</h4> <h5 class='time'>" + conv(ctime) + "</h5> </div> <p>" + data + "</p> </div> </li>")
                }});
            }
			});
			//YORUM DENEME BİTİŞ
        }
        if(sonuc.actiontype == "likes" && sonuc.likeType == 2){
            var veri = "<div class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='publisher.php?pId="+ sonuc.publisherId +"'>" + sonuc.publisherName + "</a></span> adlı yayınevini beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div><div class='post-footer'> <div class='input-group'> <input id='datal"+ sonuc.likeId +"' name='datal"+ sonuc.likeId +"' class='form-control' placeholder='Yorum yaz' type='text'> <span class='input-group-addon'> <button id='yoruml"+ sonuc.likeId +"'><i class='fa fa-edit'></i></button> </span> </div><ul class='comments-list' id='l"+ sonuc.likeId +"'></ul> </div> </div></div>";
            $("#flow").append(veri);
            //YORUM DENEME
			$("#yoruml"+ sonuc.likeId).click(function(){
			var data = $("#datal"+sonuc.likeId).val();
            var avatar=$('#leftAvatar img').attr("src");
            var name = $('#leftName').text();
            var ctime = Math.floor(Date.now() / 1000);
            if(data == ""){
                alert("Yorum Gönderilemedi");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'commentControl.php',
                data: 'cdata=' + data + '&commentType=' + sonuc.actiontype + '&checkComment=' + sonuc.likeId,
                success: function(abc){
                    $("#l"+sonuc.likeId).prepend("<li class='comment'> <a class='pull-left' href='#'> <img class='avatar' src='"+ avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <h4 class='user'>" + name + "</h4> <h5 class='time'>" + conv(ctime) + "</h5> </div> <p>" + data + "</p> </div> </li>")
                }});
            }
			});
			//YORUM DENEME BİTİŞ
        }
        if(sonuc.actiontype == "sharebook"){
            var point1=parseFloat(sonuc.bookPoint);
			var point=point1.toFixed(0);
			var veri = "<div class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='row'> <div class='col-sm-4'> <div class='post-book'> <img src='" + sonuc.frontcoverphoto + "' class='img-responsive' alt='user profile image'> </div> </div> <div class='col-sm-8'> <div class='book-name'> <a href='bookpage.php?bId="+sonuc.bookId+"'><p>"+
			"<b>" + sonuc.bookName + "</b></p></a> </div><div><div class='stars'><form action=''>"+gonder()+"</form></div><br/><button class='btn btn-info givePoint' id='sbId"+sonuc.sharebookId+"'>Puan Ver</button></div><div class='post-description'>  <div class='book-info'> <p class='book-info-back'><b>Yazar:</b><a href='author.php?aId="+ sonuc.authorId +"'>" + sonuc.authorName + " "+ sonuc.authorSurname + "</a></p> <p class='book-info-back'><b>Yayınevi:</b> <a href='publisher.php?pId="+sonuc.publisherId+"'>" + sonuc.publisherName + "</a></p>  </div> </div> </div><div class='col-md-12'> <div class='post-footer'> <div class='input-group'> <input id='datasb"+ sonuc.sharebookId +"' name='datasb"+ sonuc.sharebookId +"' class='form-control' placeholder='Yorum yaz' type='text'> <span class='input-group-addon'> <button id='yorumsb"+ sonuc.sharebookId +"'><i class='fa fa-edit'></i></button> </span> </div><ul class='comments-list' id='sb"+ sonuc.sharebookId +"'></ul> </div></div> </div></div>";
            $("#flow").append(veri);
            //YORUM DENEME
			$("#yorumsb"+sonuc.sharebookId).click(function(){
			var data = $("#datasb"+sonuc.sharebookId).val();
            var avatar=$('#leftAvatar img').attr("src");
            var name = $('#leftName').text();
			var ctime=Math.floor(Date.now() / 1000);
            $.ajax({
            type: 'POST',
            url: 'commentControl.php',
            data: 'cdata=' + data + '&commentType=' + sonuc.actiontype + '&checkComment=' + sonuc.sharebookId,
            success: function(abc){
                $("#sb"+sonuc.sharebookId).prepend("<li class='comment'> <a class='pull-left' href='#'> <img class='avatar' src='"+ avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <h4 class='user'>" + name + "</h4> <h5 class='time'>" + conv(ctime) + "</h5> </div> <p>" + data + "</p> </div> </li>")
            }});
			});
			//YORUM DENEME BİTİŞ
			//fonksiyon deneme
			function gonder(){
            if(point == 5){
            var i1="<input class='star star-5' checked='checked' type='radio' id='star-5"+sonuc.sharebookId+"' name='star'  /><label class='star star-5'  for='star-5"+sonuc.sharebookId+"'></label>";
            }
            else{
			var i1="<input class='star star-5' type='radio' id='star-5"+sonuc.sharebookId+"' name='star'  /><label class='star star-5'  for='star-5"+sonuc.sharebookId+"'></label>";
            }
            if(point == 4){
			var i2="<input class='star star-4' checked='checked' type='radio' id='star-4"+sonuc.sharebookId+"' name='star'  /><label class='star star-4'  for='star-4"+sonuc.sharebookId+"'></label>";  
            }
            else{
			var i2="<input class='star star-4' type='radio' id='star-4"+sonuc.sharebookId+"' name='star'  /><label class='star star-4'  for='star-4"+sonuc.sharebookId+"'></label>";
            }
            if(point == 3){
			var i3="<input class='star star-3' checked='checked' type='radio' id='star-3"+sonuc.sharebookId+"' name='star'  /><label class='star star-3'  for='star-3"+sonuc.sharebookId+"'></label>";   
            }
            else{
			var i3="<input class='star star-3' type='radio' id='star-3"+sonuc.sharebookId+"' name='star'  /><label class='star star-3'  for='star-3"+sonuc.sharebookId+"'></label>"; 
            }
            if(point == 2){
            var i4="<input class='star star-2' checked='checked' type='radio' id='star-2"+sonuc.sharebookId+"' name='star'  /><label class='star star-2'  for='star-2"+sonuc.sharebookId+"'></label>"; 
            }
            else{
            var i4="<input class='star star-2' type='radio' id='star-2"+sonuc.sharebookId+"' name='star'  /><label class='star star-2'  for='star-2"+sonuc.sharebookId+"'></label>"; 
            }
            if(point == 1){
			var i5="<input class='star star-1' checked='checked' type='radio' id='star-1"+sonuc.sharebookId+"' name='star'  /><label class='star star-1'  for='star-1"+sonuc.sharebookId+"'></label>";
            }
            else{
			var i5="<input class='star star-1' type='radio' id='star-1"+sonuc.sharebookId+"' name='star'  /><label class='star star-1'  for='star-1"+sonuc.sharebookId+"'></label>";
            }
			console.log(sonuc.sharebookId);
			return i1+i2+i3+i4+i5;
			};
			$("#sbId"+sonuc.sharebookId).click(function(){
			if(document.getElementById('star-1'+sonuc.sharebookId+'').checked==true){
				console.log("1 secili",sonuc.bookId);
			var verilen=1;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-2'+sonuc.sharebookId+'').checked==true){
				console.log("2 secili",sonuc.bookId);
			var verilen=2;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-3'+sonuc.sharebookId+'').checked==true){
				console.log("3 secili",sonuc.bookId);
			var verilen=3;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-4'+sonuc.sharebookId+'').checked==true){
				console.log("4 secili",sonuc.bookId);
			var verilen=4;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-5'+sonuc.sharebookId+'').checked==true){
				console.log("5 secili",sonuc.bookId);
			var verilen=5;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			});
			//fonksiyon deneme bitiş
			
			
        }
        if(sonuc.actiontype == "shares"){
            var veri = "<div class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='post-description'> <p>" + sonuc.sdata + "</p>  </div><div class='post-footer'> <div class='input-group'><input id='datas"+ sonuc.shareId +"' name='datas"+ sonuc.shareId +"' class='form-control' placeholder='Yorum yaz' type='text'> <span class='input-group-addon'> <button id='yorums"+ sonuc.shareId +"'><i class='fa fa-edit'></i></button> </span> </div><ul class='comments-list' id='s"+ sonuc.shareId +"'></ul> </div> </div></div>";
            $("#flow").append(veri);
            //YORUM DENEME
			$("#yorums"+ sonuc.shareId).click(function(){
			var data = $("#datas"+sonuc.shareId).val();
            var avatar=$('#leftAvatar img').attr("src");
            var name = $('#leftName').text();
            var ctime = Math.floor(Date.now() / 1000);
            if(data == ""){
                alert("Yorum Gönderilemedi");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'commentControl.php',
                data: 'cdata=' + data + '&commentType=' + sonuc.actiontype + '&checkComment=' + sonuc.shareId,
                success: function(abc){
                    $("#s"+sonuc.shareId).prepend("<li class='comment'> <a class='pull-left' href='#'> <img class='avatar' src='"+ avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <h4 class='user'>" + name + "</h4> <h5 class='time'>" + conv(ctime) + "</h5> </div> <p>" + data + "</p> </div> </li>")
                }});
            }
			});
			//YORUM DENEME BİTİŞ
        }
        if(sonuc.actiontype == "quatations"){
            var veri = "<div class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='row'> <div class='col-sm-2'> <div class='post-book'> <img src='" + sonuc.frontcoverphoto + "' class='img-responsive' alt='book image'> </div> </div> <div class='col-sm-10'> <div class='comment-name'> <p>" + sonuc.qdata +"</p></div> <p class='quatation-book-name' >'<a href='bookpage.php?bId="+ sonuc.bookId +"'>" + sonuc.bookName + "</a>'</p><div class='post-description'>  </div> </div><div class='col-md-12'> <div class='post-footer'> <div class='input-group'> <input id='dataq"+ sonuc.quatationId +"' name='dataq"+ sonuc.quatationId +"' class='form-control' placeholder='Yorum yaz' type='text'> <span class='input-group-addon'> <button id='yorumq"+ sonuc.quatationId +"'><i class='fa fa-edit'></i></button></span> </div><ul class='comments-list' id='q"+ sonuc.quatationId +"'></ul> </div></div> </div></div>";
            $("#flow").append(veri);
            //YORUM DENEME
			$("#yorumq"+ sonuc.quatationId).click(function(){
			var data = $("#dataq"+sonuc.quatationId).val();
            var avatar=$('#leftAvatar img').attr("src");
            var name = $('#leftName').text();
            var ctime = Math.floor(Date.now() / 1000);
            if(data == ""){
                alert("Yorum Gönderilemedi");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'commentControl.php',
                data: 'cdata=' + data + '&commentType=' + sonuc.actiontype + '&checkComment=' + sonuc.quatationId,
                success: function(abc){
                    $("#q"+sonuc.quatationId).prepend("<li class='comment'> <a class='pull-left' href='#'> <img class='avatar' src='"+ avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <h4 class='user'>" + name + "</h4> <h5 class='time'>" + conv(ctime) + "</h5> </div> <p>" + data + "</p> </div> </li>")
                }});
            }
			});
			//YORUM DENEME BİTİŞ
        }
        });
        
        //Saydırma Daha Fazlasını Göster
        var say = $("div.counter").length;
        if(say>5){
            $("div.counter:gt(4)").hide();
            $("#flow").append("<button type='button' id='tumu' class='btn btn-primary'>Daha Fazla Göster</button>");
        }
        var click = 0;
        $("button#tumu").click(function(){
            $("div.counter:hidden").slice(0,5).slideDown();
            click += 5;
            if(say<=5+click)
                $("button#tumu").hide();
        });
      });
      //Flow Bitiş


      //Yorumlar
      setTimeout(function(){
        $.getJSON("comment.php", function(yorum){
        $.each(yorum, function(i, yorum){
          var veri = "<li class='comment'> <a class='pull-left' href='profile.php?pId="+yorum.userId+"'> <img class='avatar' src='"+ yorum.avatar +"' alt='avatar'> </a> <div class='comment-body'> <div class='comment-heading'> <a href='profile.php?pId="+yorum.userId+"' class='user'>" + yorum.name + " " + yorum.surname + "</a> <h5 class='time'>" + conv(yorum.ctime) + "</h5> </div> <p>" + yorum.cdata + "</p> </div> </li>";
          if(yorum.commentType == 'likes'){
            $("#l"+yorum.checkComment).append(veri);
          }
          if(yorum.commentType == 'shares'){
            $("#s"+yorum.checkComment).append(veri);
          }
          if(yorum.commentType == 'sharebook'){
            $("#sb"+yorum.checkComment).append(veri);
          }
          if(yorum.commentType == 'quatations'){
            $("#q"+yorum.checkComment).append(veri);
          }
          });
        })},500);
        //Yorumlar Bitiş
      
        //İleti Paylaş
        $("button#ShareSend").click(function(){

            var sdata = $("#sharedata").val();
            if(sdata == ""){
                $("#ShareWarning").empty();
                $("#ShareWarning").append("Geçersiz işlem yaptınız.").css("color","red");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'share.php',
                data: 'sdata=' + sdata,
                success: function(share){
                    $("#ShareWarning").empty();
                    $("#ShareWarning").append(share).css("color","green");
                    $("#ShareSend").attr("disabled", true);
                    window.setTimeout('location.reload()', 500);
                }
            });
            }
        });
        //İleti Paylaş Bitiş
        
        
        //Kitap Paylaş
        $.getJSON("authorlink.php", function(yazar){
            $.each(yazar, function(i, yazar){
                $("#AuthorName").append('<option value="'+ yazar.authorId +'">' + yazar.authorName + ' ' + yazar.authorSurname + '</option>');
                $("#quatationAuthor").append('<option value="'+ yazar.authorId +'">' + yazar.authorName + ' ' + yazar.authorSurname + '</option>');
            });
        });

        $("#AuthorName").on("change", function() {
            var authorId = $("#AuthorName option:selected").val();
            console.log(authorId);
            $.ajax({
                type: 'POST',
                url: 'booklink.php',
                data: 'authorId=' + authorId,
                success: function(kitap){
                    $("#BookName").empty();
                    var kitap = jQuery.parseJSON(kitap);
                    $.each(kitap, function(i, kitap){
                        $("#BookName").append("<option value='" +  kitap.bookId + "'>" + kitap.bookName + "</option>");
                    });
                }
            });
        });

        $("#BookSend").click(function(){
            var authorId = $("#AuthorName option:selected").val();
            var bookId = $("#BookName option:selected").val();
            var controlText = $("#BookName option:selected").text();
            if(controlText == ""){
                $("#BookWarning").empty();
                $("#BookWarning").append("Geçersiz işlem yaptınız.").css("color","red");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'sharebook.php',
                data: 'bookId=' + bookId,
                success: function(share){
                    $("#BookWarning").empty();
                    $("#BookWarning").append(share).css("color","green");
                    $("#BookSend").attr("disabled", true);
                    window.setTimeout('location.reload()', 500);
                }
            });
            }
        });
        //Kitap Paylaş Bitiş
        
        //Alıntı Paylaş
        $("#quatationAuthor").on("change", function() {
            var authorId = $("#quatationAuthor option:selected").val();
            $.ajax({
                type: 'POST',
                url: 'booklink.php',
                data: 'authorId=' + authorId,
                success: function(kitap){
                    $("#quatationBook").empty();
                    var kitap = jQuery.parseJSON(kitap);
                    $.each(kitap, function(i, kitap){
                        $("#quatationBook").append("<option value='" +  kitap.bookId + "'>" + kitap.bookName + "</option>");
                    });
                }
            });
        });

        $("#QuatationSend").click(function(){
            var authorId = $("#quatationAuthor option:selected").val();
            var bookId = $("#quatationBook option:selected").val();
            var controlText = $("#quatationBook option:selected").text();
            var qdata = $("#quatation").val();
            if(controlText == "" || qdata == ""){
                $("#QuatationWarning").empty();
                $("#QuatationWarning").append("Geçersiz işlem yaptınız.").css("color","red");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'quatation.php',
                data: 'bookId=' + bookId + '&qdata=' + qdata,
                success: function(share){
                    $("#QuatationWarning").empty();
                    $("#QuatationWarning").append(share).css("color","green");
                    $("#QuatationSend").attr("disabled", true);
                    window.setTimeout('location.reload()', 500);
                }
            });
            }
        });
        //Alıntı Paylaş Bitiş

      function conv(time){
			
			var date = new Date(time*1000);
			var month = new Array("Ocak","Şubat","Mart","Nisan","Mayıs","Haziran","Temmuz","Ağustos","Eylül","Ekim","Kasım","Aralık");
			var day = new Array("Pz","Pzt","Sal","Çar","Per","Cum","Cmt");
			var m =date.getMonth();
			var y =date.getFullYear();
			var d=date.getDate();
			var h=date.getHours();
            var min=date.getMinutes();
            if(min<10){
                return d+" "+ month[m]+" "+y+", "+h+":0"+min;
            }
			    return d+" "+ month[m]+" "+y+", "+h+":"+min;
			
        }

});         