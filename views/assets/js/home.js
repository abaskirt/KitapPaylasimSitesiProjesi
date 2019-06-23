$(function(){ 
 $.getJSON("counter.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var user = sonuc.user;
		  var book = sonuc.book;
		  var author = sonuc.author;
		  var publisher = sonuc.publisher;
		  $("#userCount").text(sonuc.user);
		  $("#bookCount").text(sonuc.book);
		  $("#authorCount").text(sonuc.author);
		  $("#publisherCount").text(sonuc.publisher);
		  
        });
      });        
	 });  		
	