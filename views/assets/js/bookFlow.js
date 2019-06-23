$(function(){
      
	  $.getJSON("bookinfo.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
		
		$("#HeadBook").append(sonuc.bookName+" "+"<a href='author.php?aId="+sonuc.authorId+"'>"+sonuc.authorName+" "+sonuc.authorSurname+"</a>");
		$("#SummaryText").append("Özet : "+sonuc.summary);
		$("#infoAll").append("Yayınevi :"+"<a href='publisher.php?pId="+ sonuc.publisherId +"'>"+sonuc.publisherName+"</a>"+"&nbsp&nbsp&nbsp"+"Orijinal Adı :"
		+sonuc.originalName+"&nbsp&nbsp&nbsp"+"Baskı Tarihi :"+sonuc.firstDate+"<br/>"+"Kategoriler :"+sonuc.category+"&nbsp&nbsp&nbsp&nbsp&nbsp"+
		"Sayfa Sayısı :"+sonuc.pageNumber+"&nbsp&nbsp&nbsp"+"Ebatlar :"+sonuc.size);
		$("#bookflow").append("<div id='b"+sonuc.bookId+"'</div>");
		//Yorum Paylaş
        $("button#BookShareSend").click(function(){
            var cdata = $("#booksharedata").val();
			var books="books";
            if(cdata == ""){
                $("#BookShareWarning").empty();
                $("#BookShareWarning").append("Geçersiz işlem yaptınız.").css("color","red");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'commentControl.php',
                data: 'cdata=' + cdata+'&commentType=' + books +'&checkComment=' + sonuc.bookId,
                success: function(share){
                    $("#BookShareWarning").empty();
                    $("#BookShareWarning").append(share).css("color","green");
                    $("#BookShareSend").attr("disabled", true);
                    window.setTimeout('location.reload()', 100);
                }
            });
            }
        });
        //Yorum Paylaş Bitiş
        
        
        //Kitap Paylaş
        
        $("#BookFlowSend").click(function(){
            var authorId = sonuc.authorId;
            var bookId = sonuc.bookId;
            
                $.ajax({
                type: 'POST',
                url: 'sharebook.php',
                data: 'bookId=' + bookId,
                success: function(share){
                    $("#BookFlowWarning").empty();
                    $("#BookFlowWarning").append(share).css("color","green");
                    $("#BookFlowSend").attr("disabled", true);
                    window.setTimeout('window.location.assign("main.php")', 100);
                }
            });
            
        });
        //Kitap Paylaş Bitiş
        
        //Alıntı Paylaş

        $("#bookQuatationSend").click(function(){
            var authorId = sonuc.authorId;
            var bookId = sonuc.bookId;
            var qdata = $("#bookQuatation").val();
            if(qdata == ""){
                $("#QuatationFlowWarning").empty();
                $("#QuatationFlowWarning").append("Geçersiz işlem yaptınız.").css("color","red");
            }
            else{
                $.ajax({
                type: 'POST',
                url: 'quatation.php',
                data: 'bookId=' + bookId + '&qdata=' + qdata,
                success: function(share){
                    $("#QuatationFlowWarning").empty();
                    $("#QuatationFlowWarning").append(share).css("color","green");
                    $("#bookQuatationSend").attr("disabled", true);
                    window.setTimeout('window.location.assign("main.php")', 100);
                }
            });
            }
        });
        //Alıntı Paylaş Bitiş
		
		
		});
	});
		setTimeout(function(){
		$.getJSON("bookComment.php", function(sonuc){
		$.each(sonuc, function(i, sonuc){
	  
		var veri = "<div id='bc'"+sonuc.checkComment+" class='counter'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='#'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.ctime)+"</h6> </div> </div> <div class='post-description'> <p>" + sonuc.cdata + "</p> </div> </div></div>";
			$("#b"+sonuc.checkComment).append(veri);
            //YORUM DENEME
		});
		});
		},500);
		function conv(time){
			
			var date = new Date(time*1000);
			var month = new Array("Ocak","Şubat","Mart","Nisan","Mayıs","Haziran","Temmuz","Ağustos","Eylül","Ekim","Kasım","Aralık");
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