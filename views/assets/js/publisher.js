$(function(){
	  $.getJSON("publisherControl.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
		  var publisherAvatar = "<img src='"+ sonuc.publisherAvatar + "' class='img-responsive'/>";
          var veri = sonuc.publisherName;
		  var establish = sonuc.establish;
		  var address = sonuc.address;
		  var bookCategory =sonuc.bookCategory;
		  var about =sonuc.about;
		  
		  $("#publisherAvatar").append(publisherAvatar);
		  $("#publisherName").append(veri);
		  $("#kurulus").append(establish);
		  $("#adres").append(address);
		  $("#category").append(bookCategory);
		  $("#about").append(about);  

		  $.ajax({
            type:'POST',
            url:'likeControl.php',
            data:'checkId='+sonuc.publisherId+'&likeType='+'2',
			success: function(likeReturn){
                    if(likeReturn=="var"){$("#likeButtonP").html("<i class='fa fa-thumbs-down' aria-hidden='true'></i> Vazgeç").css("backgroundColor","green");}
					if(likeReturn=="yok"){$("#likeButtonP").html("<i class='fa fa-thumbs-up' aria-hidden='true'></i> Beğen").css("backgroundColor","#5bc0de");}
                }
			});
			
			$("button#likeButtonP").click(function(){
			$.ajax({
            type:'POST',
            url:'like.php',
            data:'checkId='+sonuc.publisherId+'&likeType='+'2',
			success: function(share){
                    $("#likeButtonP").attr("disabled", true);
                    window.setTimeout('window.location.assign("publisher.php?pId='+sonuc.publisherId+'")', 1);
                }
            });

        });
	  }); 
	}); 
	  
	  $.getJSON("publisherbookControl.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
           
		  var frontcoverphoto = "<a href='bookpage.php?bId="+ sonuc.bookId +"'><img src='"+ sonuc.frontcoverphoto + "' class='img-responsive'/></a>";
		  
		  $("#publisherBooks").append(frontcoverphoto);
			});  
        });
      });	
        
     