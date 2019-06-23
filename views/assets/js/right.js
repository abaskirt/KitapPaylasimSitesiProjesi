$(function(){
      //Top 100
			$.getJSON("top100.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = "<li><a href='bookpage.php?bId="+sonuc.bookId+"'>"+ sonuc.bookName +"<span class='top-point'><i class='fa fa-star' aria-hidden='true'></i> "+ sonuc.bookPoint + "</span></a></li>";
          $("#top100").append(veri);
        });
      });
      //Popüler Kitaplar
      $.getJSON("popularbooks.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = "<li><a href='bookpage.php?bId="+sonuc.bookId+"'>"+ sonuc.bookName +"<span class='top-point'><i class='fa fa-star' aria-hidden='true'></i> "+ sonuc.bookPoint + "</span></a></li>";
          $("#popularbooks").append(veri);
        });
      });
      //Son Eklenenler
      $.getJSON("lastadded.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = "<div class='item' id='slider'><div class='row'><div class='col-md-12'  style = 'width:100%'><a class='thumbnail' href='bookpage.php?bId="+sonuc.bookId+"'><img alt='' src='" + sonuc.frontcoverphoto + "'><div class='end-book-name'>" + sonuc.bookName + "</div><div class='end-book-author'>" + sonuc.authorName +" "+sonuc.authorSurname +"</div></a></div></div></div>";
          $(".carousel-inner").append(veri);
          $("#slider:first").addClass("active");
        });
      });
});

        