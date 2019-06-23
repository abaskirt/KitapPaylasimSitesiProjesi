$(function(){
	
	//Kitap Bilgileri
		
      //listelerim
			$.getJSON("listPageControl.php", function(sonuc){
      $.each(sonuc, function(i, sonuc){
          var veri = '<tr><td><a onclick="getListDetail('+sonuc.listId+')"><i class="fa fa-book">'+ sonuc.listName +'</a></td><td>'+ conv(sonuc.startingDate) +'</td><td>'+ conv(sonuc.finishingDate) +'</td><td><span class="label label-success">işlem</span></td></tr>';
          $("#listsInfo").append(veri);
        });
      });
	   
			 //Kitap Bilgileri Bitiş
			 
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
function getListDetail(listId) {
			console.log('hikaye');
			$.ajax({
				type: 'POST',
				url: 'listPageControlBooks.php',
				data: 'listId=' + listId,
				success: function(kitap){
					$("#okuduklarim").empty();
					var kitap = jQuery.parseJSON(kitap);
					for (var i in kitap){
						sonuc=kitap[i];
						var veri = '<tr><td width="75" height="" rowspan="" align="center"><a href="bookpage.php?bId='+sonuc.bookId+'"><img src="'+sonuc.frontcoverphoto+'" height="75" width="75"></a></td><td><a href="bookpage.php?bId='+sonuc.bookId+'">'+ sonuc.bookName +'</a></td><td>'+ sonuc.bookPoint+'</td><td>'+ sonuc.size+'</td><td><span class="label label-success">işlem</span></td></tr>';
						$("#okuduklarim").append(veri);
					}
					
				}
			});
        }
