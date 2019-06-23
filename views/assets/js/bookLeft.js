$(function(){
      
	  //bookLeft Profil
	  $.getJSON("bookinfo.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var photo = "<img src='" +sonuc.frontcoverphoto + "'class='img-responsive' height='350' width='220' alt=''>";
		  var point1=parseFloat(sonuc.bookPoint);
		  var point=point1.toFixed(0);
		  var pointFl=point1.toFixed(1);
		  
		  //like contoller
		  $.ajax({
            type:'POST',
            url:'likeControl.php',
            data:'checkId='+sonuc.bookId+'&likeType='+'1',
			success: function(likeReturn){
                    if(likeReturn=="var"){$("#likeButton").html("<i class='fa fa-thumbs-down' aria-hidden='true'></i> Vazgeç").css("backgroundColor","green");}
					if(likeReturn=="yok"){$("#likeButton").html("<i class='fa fa-thumbs-up' aria-hidden='true'></i> Beğen").css("backgroundColor","#5bc0de");}
                }
            });
		  
		  //like contoller
		  
		  
		  var veri="<div><div class='stars str'><form class='pointNumber' action=''><span class='avgPoint'>Puan:"+pointFl+"</span>"+gonder()+"</form></div><br/></div>";
		  function gonder(){
            if(point == 5){
            var i1="<input class='star star-5' checked='checked' type='radio' id='star-5"+sonuc.bookId+"' name='star'  /><label class='star star-5'  for='star-5"+sonuc.bookId+"'></label>";
            }
            else{
			var i1="<input class='star star-5' type='radio' id='star-5"+sonuc.bookId+"' name='star'  /><label class='star star-5'  for='star-5"+sonuc.bookId+"'></label>";
            }
            if(point == 4){
			var i2="<input class='star star-4' checked='checked' type='radio' id='star-4"+sonuc.bookId+"' name='star'  /><label class='star star-4'  for='star-4"+sonuc.bookId+"'></label>";  
            }
            else{
			var i2="<input class='star star-4' type='radio' id='star-4"+sonuc.bookId+"' name='star'  /><label class='star star-4'  for='star-4"+sonuc.bookId+"'></label>";
            }
            if(point == 3){
			var i3="<input class='star star-3' checked='checked' type='radio' id='star-3"+sonuc.bookId+"' name='star'  /><label class='star star-3'  for='star-3"+sonuc.bookId+"'></label>";   
            }
            else{
			var i3="<input class='star star-3' type='radio' id='star-3"+sonuc.bookId+"' name='star'  /><label class='star star-3'  for='star-3"+sonuc.bookId+"'></label>"; 
            }
            if(point == 2){
            var i4="<input class='star star-2' checked='checked' type='radio' id='star-2"+sonuc.bookId+"' name='star'  /><label class='star star-2'  for='star-2"+sonuc.bookId+"'></label>"; 
            }
            else{
            var i4="<input class='star star-2' type='radio' id='star-2"+sonuc.bookId+"' name='star'  /><label class='star star-2'  for='star-2"+sonuc.bookId+"'></label>"; 
            }
            if(point == 1){
			var i5="<input class='star star-1' checked='checked' type='radio' id='star-1"+sonuc.bookId+"' name='star'  /><label class='star star-1'  for='star-1"+sonuc.bookId+"'></label>";
            }
            else{
			var i5="<input class='star star-1' type='radio' id='star-1"+sonuc.bookId+"' name='star'  /><label class='star star-1'  for='star-1"+sonuc.bookId+"'></label>";
            }
			return i1+i2+i3+i4+i5;
		  };
		  $("button#boId").click(function()
		  {
		  if(document.getElementById('star-1'+sonuc.bookId+'').checked==true){
				console.log("1 secili",sonuc.bookId);
			var verilen=1;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-2'+sonuc.bookId+'').checked==true){
				console.log("2 secili",sonuc.bookId);
			var verilen=2;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-3'+sonuc.bookId+'').checked==true){
				console.log("3 secili",sonuc.bookId);
			var verilen=3;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-4'+sonuc.bookId+'').checked==true){
				console.log("4 secili",sonuc.bookId);
			var verilen=4;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			if(document.getElementById('star-5'+sonuc.bookId+'').checked==true){
				console.log("5 secili",sonuc.bookId);
			var verilen=5;
			$.ajax({
            type:'POST',
            url:'rating.php',
            data:'bookId='+sonuc.bookId+'&verilen='+verilen,
            });
			}
			window.setTimeout('window.location.assign("bookpage.php?bId='+sonuc.bookId+'")', 100);
		  });
		  //like button fonk
		  $("button#likeButton").click(function(){
			$.ajax({
            type:'POST',
            url:'like.php',
            data:'checkId='+sonuc.bookId+'&likeType='+'1',
			success: function(share){
                    $("#likeButton").attr("disabled", true);
                    window.setTimeout('window.location.assign("bookpage.php?bId='+sonuc.bookId+'")', 100);
                }
            });
			  
		  });
		  //like button bitişi
		  
		  var name=sonuc.bookName;
		  var authorName=sonuc.authorName+" "+ sonuc.authorSurname;
		  
          $("#leftBook").append(photo);
		  $("#leftBookName").append(name);
		  $("#leftAuthorName").append(authorName);
		  $("#leftBookPoint").append(veri);
        });
      });
      
});