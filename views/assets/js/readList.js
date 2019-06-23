$(function(){	

			$.getJSON("listPageControlBooks.php", function(sonuc){
				$("#okuduklarim2").html("");
      $.each(sonuc, function(i, sonuc){
		  var veri = '<tr><td width="75" height="" rowspan="" align="center"><a href="bookpage.php?bId='+sonuc.bookId+'"><img src="'+sonuc.frontcoverphoto+'" height="75" width="75"></a></td><td><a href="bookpage.php?bId='+sonuc.bookId+'">'+ sonuc.bookName +'</a></td><td>'+ sonuc.size+'</td><td>'+ sonuc.bookPoint+'</td><td><span class="label label-success">işlem</span></td></tr>';
		  $("#okuduklarim2").append(veri);
        });
      });  
});