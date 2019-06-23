$(function(){
      
	  $.getJSON("profileAll.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
		  
		 
		if(sonuc.actiontype == "likes" && sonuc.likeType == 0){
        var veri = "<div class='counter1'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='author.php?aId="+ sonuc.authorId +"'>" + sonuc.authorName + " " + sonuc.authorSurname + "</a></span> adlı yazarı beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> </div></div>";
			$("#proAll").append(veri);
			
        }
        if(sonuc.actiontype == "likes" && sonuc.likeType == 1){
            var veri = "<div class='counter1'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='bookpage.php?bId="+ sonuc.bookId +"'>" + sonuc.bookName + "</a></span> adlı kitabı beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div></div></div>";
            $("#proAll").append(veri);
            
        }
        if(sonuc.actiontype == "likes" && sonuc.likeType == 2){
            var veri = "<div class='counter1'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='publisher.php?pId="+ sonuc.publisherId +"'>" + sonuc.publisherName + "</a></span> adlı yayınevini beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div></div></div>";
            $("#proAll").append(veri);
            
        }
        if(sonuc.actiontype == "sharebook"){
            var point1=parseFloat(sonuc.bookPoint);
			var point=point1.toFixed(0);
			var veri = "<div class='counter1'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='row'> <div class='col-sm-4'> <div class='post-book'> <img src='" + sonuc.frontcoverphoto + "' class='img-responsive' alt='user profile image'> </div> </div> <div class='col-sm-8'> <div class='book-name'> <a href='bookpage.php?bId="+sonuc.bookId+"'><p>"+
			"<b>" + sonuc.bookName + "</b></p></a> </div><div><div class='stars'><form action=''>"+gonder()+"</form></div><br/><button class='btn btn-info givePoint' id='sbId"+sonuc.sharebookId+"'>Puan Ver</button></div><div class='post-description'>  <div class='book-info'> <p class='book-info-back'><b>Yazar:</b> <a href='author.php?aId="+ sonuc.authorId +"'>" + sonuc.authorName + " "+ sonuc.authorSurname + "</a></p> <p class='book-info-back'><b>Yayınevi:</b> <a href='publisher.php?pId="+ sonuc.publisherId +"'>" + sonuc.publisherName + "</a></p>  </div> </div> </div><div class='col-md-12'> </div> </div></div>";
            $("#proAll").append(veri);
            
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
            var veri = "<div class='counter1'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='post-description'> <p>" + sonuc.sdata + "</p>  </div></div></div>";
            $("#proAll").append(veri);
            
        }
        if(sonuc.actiontype == "quatations"){
            var veri = "<div class='counter1'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='row'> <div class='col-sm-2'> <div class='post-book'> <img src='" + sonuc.frontcoverphoto + "' class='img-responsive' alt='book image'> </div> </div> <div class='col-sm-10'> <div class='comment-name'> <p>" + sonuc.qdata +"</p></div> <p class='quatation-book-name' >'<a href='bookpage.php?bId="+ sonuc.bookId +"'>" + sonuc.bookName + "</a>'</p><div class='post-description'>  </div> </div><div class='col-md-12'> </div> </div></div>";
            $("#proAll").append(veri);
            
        }
        
		
	  });
	  var say = $("div.counter1").length;
	  $("#countAll").append(" ("+say+")");
	  });
	  
	  //Akıs bitis
	  
	  
	  $.getJSON("profileQuatation.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
		  
		 
				var veri = "<div class='counter2'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + "</b></a> </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div> <div class='row'> <div class='col-sm-2'> <div class='post-book'> <img src='" + sonuc.frontcoverphoto + "' class='img-responsive' alt='book image'> </div> </div> <div class='col-sm-10'> <div class='comment-name'> <p>" + sonuc.qdata +"</p></div> <p class='quatation-book-name' >'<a href='bookpage.php?bId="+ sonuc.bookId +"'>" + sonuc.bookName + "</a>'</p><div class='post-description'> <div class='stats'> </div> </div> </div> </div></div>";
				$("#quatationPro").append(veri);
        
		  
	  });
	  var say = $("div.counter2").length;
	  $("#countQuatations").append(" ("+say+")");
	  });
	  $.getJSON("profileLikes.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
		if(sonuc.actiontype == "likes" && sonuc.likeType == 0){
            var veri = "<div class='counter3'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='author.php?aId="+ sonuc.authorId +"'>" + sonuc.authorName + " " + sonuc.authorSurname + "</a></span> adlı yazarı beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div></div></div>";
			$("#likePro").append(veri);
			
        }
        if(sonuc.actiontype == "likes" && sonuc.likeType == 1){
            var veri = "<div class='counter3'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='bookpage.php?bId="+ sonuc.bookId +"'>" + sonuc.bookName + "</a></span> adlı kitabı beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div></div></div>";
            $("#likePro").append(veri);
            
        }
        if(sonuc.actiontype == "likes" && sonuc.likeType == 2){
            var veri = "<div class='counter3'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar +"' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='profile.php?pId="+sonuc.userId+"'><b>" + sonuc.name + " " + sonuc.surname + " </b></a><span><a href='publisher.php?pId="+ sonuc.publisherId +"'>" + sonuc.publisherName + "</a></span> adlı yayınevini beğendi. </div> <h6 class='text-muted time'>"+conv(sonuc.time)+"</h6> </div> </div></div></div>";
            $("#likePro").append(veri);
            
        }
        
	  });
	  var say = $("div.counter3").length;
	  $("#countLikes").append(" ("+say+")");
	  });
	  
	  $.getJSON("profileReview.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
		  
				var veri = "<div class='counter4'><div class='panel panel-white post panel-shadow'> <div class='post-heading'> <div class='pull-left image'> <img src='" + sonuc.avatar + "' class='img-circle avatar' alt='user profile image'> </div> <div class='pull-left meta'> <div class='title h5'> <a href='#'><b>" + sonuc.name + " " + sonuc.surname + ",</b></a>&nbsp<a href='bookpage.php?bId="+sonuc.bookId+"'>"+sonuc.bookName+"</a> kitabı hakkında yorum yaptı. </div> <h6 class='text-muted time'>"+conv(sonuc.ctime)+"</h6> </div> </div> <div class='post-description'> <p>" + sonuc.cdata + "</p> </div> </div></div>";
				$("#commentPro").append(veri);
	  });
	  var say = $("div.counter4").length;
	  $("#countComments").append(" ("+say+")");
	  });
	  
	  
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