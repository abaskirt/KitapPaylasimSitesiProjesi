﻿$(function(){
      /*//Lists
			$.getJSON("lists.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = "<a href='#'><li>"+ sonuc.listName + "</li></a>";
          $("#myList").prepend(veri);
        });
      });
	  //ReadLists
	  $.getJSON("read.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = "<a href='#'><li>"+ sonuc.bookName + "</li></a>";
          $("#readList").prepend(veri);
        });
      });*/
	  //Left Profil
	  $.getJSON("profileinfo.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var avatar = "<img src='" +sonuc.avatar + "'class='img-responsive' height='128' width='128' alt=''>";
		  var name=sonuc.name+" "+sonuc.surname;
		  var userName=sonuc.userName;
		  var job=sonuc.job;
		  var adress=sonuc.adress;
		  var birthDate=sonuc.birthDate;
          $("#leftAvatarOther").append(avatar);
		  $("#leftNameOther").append(name);
		  $("#leftJobOther").append(job);
        });
      });
      
});