<div class="col-sm-6">
  <br/>
  
<div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#sAll" aria-controls="sAll" role="tab" data-toggle="tab">Tümü (<?php echo count($book)+count($author)+count($publisher)+count($user); ?>)</a></li>
	<li role="presentation"><a href="#sBook" aria-controls="sBook" role="tab" data-toggle="tab">Kitaplar (<?php echo count($book); ?>)</a></li>
    <li role="presentation"><a href="#sAuthor" aria-controls="sAuthor" role="tab" data-toggle="tab">Yazarlar (<?php echo count($author); ?>)</a></li>
    <li role="presentation"><a href="#sPublisher" aria-controls="sPublisher" role="tab" data-toggle="tab">Yayınevleri (<?php echo count($publisher); ?>)</a></li>
    <li role="presentation"><a href="#sUser" aria-controls="sUser" role="tab" data-toggle="tab">Kullanıcılar (<?php echo count($user); ?>)</a></li>
  </ul>


				

  <!-- Tab panes -->
  <div class="tab-content">
	<div role="tabpanel" class="tab-pane active" id="sAll">
		<div class="kitaplar">Kitaplar</div>
		<?php
				if(!empty($book)){
					foreach($book as $row){
			?>
			
			<ul class="event-list">
					<li>
						<img src="<?php echo $row['frontcoverphoto']; ?>" />
						<div class="info">
							<h2 class="title"><a href="bookpage.php?bId=<?php echo $row['bookId']; ?>"><?php echo $row['bookName']; ?></a></h2>
							<p class="desc"><?php echo $row['authorName']. " " . $row['authorSurname']; ?></p>
						</div>
					</li>
				</ul>
			<?php
					}
				}
				else{
					echo "Aradığınız kriterde Kitap bulunamadı.";
				}
			?>
		<div class="yazarlar">Yazarlar</div>
		<?php
				if(!empty($author)){
					foreach($author as $row){
		?>
			
		<div class="col-md-6">
            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="<?php echo $row['authorAvatar']; ?>">
                </div>
                <div class="info">
                    <div class="title">
                        <a target="_blank" href="http://scripteden.com/"><?php echo $row['authorName']. " " . $row['authorSurname']; ?></a>
                    </div>
                </div>
		</div>
		</div>
		<?php
					}
				}else{
					echo "Aradığınız kriterde Yazar bulunamadı.";
				}
?>		

		<div class="temizle"></div>
		<div class="yayinlar">Yayınevleri</div>
		<?php
				if(!empty($publisher)){
					foreach($publisher as $row){
			?>
			
			<ul class="event-list">
					<li>
						<img src="<?php echo $row['authorAvatar']; ?>" />
						<div class="info">
							<h2 class="title"><?php echo $row['publisherName']; ?></h2>
							<p class="desc"></p>
						</div>
					</li>
				</ul>
			<?php
					}
				}else{
					echo "Aradığınız kriterde Yayınevi bulunamadı.";
				}
			?>
		<div class="kullanicilar">Kullanıcılar</div>	
		<?php
				if(!empty($user)){
					foreach($user as $row){
		?>
			
		<div class="col-md-6">
            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="<?php echo $row['avatar']; ?>">
                </div>
                <div class="info">
                    <div class="title">
                        <a target="_blank" href="profile.php?pId=<?php echo $row['userId']?>"><?php echo $row['name']. " " . $row['surname']; ?></a>
                    </div>
					<div class="desc"><?php echo $row['userName']; ?></div>
					<div class="desc"><button id="follow" class="btn btn-success">Takip Et</button></div>
                </div>
            </div>
		</div>
		<?php
					}
				}else{
					echo "Aradığınız kriterde Kullanıcı bulunamadı.";
				}
?>
	</div>

    <div role="tabpanel" class="tab-pane" id="sBook">
			<?php
				if(!empty($book)){
					foreach($book as $row){
			?>
			
			<ul class="event-list">
					<li>
						<img src="<?php echo $row['frontcoverphoto']; ?>" />
						<div class="info">
							<h2 class="title"><a href="bookpage.php?bId=<?php echo $row['bookId']; ?>"><?php echo $row['bookName']; ?></a></h2>
							<p class="desc"><?php echo $row['authorName']. " " . $row['authorSurname']; ?></p>
						</div>
					</li>
				</ul>
			<?php
					}
				}
				else{
					echo "Aradığınız kriterde Kitap bulunamadı.";
				}
			?>
		</div>

    <div role="tabpanel" class="tab-pane" id="sAuthor">
		<?php
				if(!empty($author)){
					foreach($author as $row){
		?>
			
		<div class="col-md-6">
            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="<?php echo $row['authorAvatar']; ?>">
                </div>
                <div class="info">
                    <div class="title">
                        <a target="_blank" href="http://scripteden.com/"><?php echo $row['authorName']. " " . $row['authorSurname']; ?></a>
                    </div>
                </div>
		</div>
		</div>
		<?php
					}
				}else{
					echo "Aradığınız kriterde Yazar bulunamadı.";
				}
		?>		
	</div>

    <div role="tabpanel" class="tab-pane" id="sPublisher">
			<?php
				if(!empty($publisher)){
					foreach($publisher as $row){
			?>
			
			<ul class="event-list">
					<li>
						<img src="<?php echo $row['authorAvatar']; ?>" />
						<div class="info">
							<h2 class="title"><?php echo $row['publisherName']; ?></h2>
							<p class="desc"></p>
						</div>
					</li>
				</ul>
			<?php
					}
				}else{
					echo "Aradığınız kriterde Yayınevi bulunamadı.";
				}
			?>
	</div>

    <div role="tabpanel" class="tab-pane" id="sUser">
		<?php
				if(!empty($user)){
					foreach($user as $row){
		?>
			
		<div class="col-md-6">
            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="<?php echo $row['avatar']; ?>">
                </div>
                <div class="info">
                    <div class="title">
                        <a target="_blank" href="http://scripteden.com/"><?php echo $row['name']. " " . $row['surname']; ?></a>
                    </div>
					<div class="desc"><?php echo $row['userName']; ?></div>
					<div class="desc"><button id="follow" class="btn btn-success" onclick="idSend(<?php echo $row['userId']?>)">Takip Et</button></div>
                </div>
            </div>
		</div>
		<?php
					}
				}else{
					echo "Aradığınız kriterde Kullanıcı bulunamadı.";
				}
		?>
	</div>
  </div>

</div>


</div>

<script>

	function idSend(followId){
		
		$.ajax({
                type: 'POST',
                url: 'follow.php',
                data: 'followId=' + followId,
                success: function(follow){
					alert(follow);
                }
            });
	}
</script>