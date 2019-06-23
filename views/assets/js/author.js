$(function(){
	  $.getJSON("authorControl.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = sonuc.authorName + " " + sonuc.authorSurname;
		  var authoravatar = "<img src='"+ sonuc.authoravatar + "' class='img-responsive'/>";
		  var birthDate = sonuc.birthDate;
		  var deathDate = sonuc.deathDate;
		  var prize =sonuc.prize;
		  var biography =sonuc.biography;
		  var authorPoint =sonuc.authorPoint;
		  
          $("#authorAvatar").append(authoravatar);
		  $("#name").append(veri);
		  $("#dogum").append(birthDate);
		  $("#olum").append(deathDate);
		  $("div#prize").text(prize);
		  $("div#biography").text(biography);
		  $("#authorPoint").append(authorPoint);
		  
		  $.ajax({
            type:'POST',
            url:'likeControl.php',
            data:'checkId='+sonuc.authorId+'&likeType='+'0',
			success: function(likeReturn){
                    if(likeReturn=="var"){$("#likeButtonA").html("<i class='fa fa-thumbs-down' aria-hidden='true'></i> Vazgeç").css("backgroundColor","green");}
					if(likeReturn=="yok"){$("#likeButtonA").html("<i class='fa fa-thumbs-up' aria-hidden='true'></i> Beğen").css("backgroundColor","#5bc0de");}
                }
			});
			
			$("button#likeButtonA").click(function(){
			$.ajax({
            type:'POST',
            url:'like.php',
            data:'checkId='+sonuc.authorId+'&likeType='+'0',
			success: function(share){
                    $("#likeButtonA").attr("disabled", true);
                    window.setTimeout('window.location.assign("author.php?aId='+sonuc.authorId+'")', 1);
                }
            });
			  
		  });
        });
      });
	  
	  $.getJSON("authorbookControl.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          
		  
		  var frontcoverphoto = "<a href='bookpage.php?bId="+ sonuc.bookId +"'><img src='"+ sonuc.frontcoverphoto + "' class='img-responsive'/></a>";
		  
		  $("#authorBooks").append(frontcoverphoto);
			});  
		});
		


      });