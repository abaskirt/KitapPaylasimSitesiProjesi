<!--login popupı -->
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
					<h1>Kullanıcı Girişi</h1><br>
				  <form action="./login.php" method="POST">
					<input type="text" name="userName" placeholder="Kullanıcı Adı" required="">
					<input type="password" name="password" placeholder="Şifre" required="">
					<input type="submit" name="login" class="login loginmodal-submit" value="Giriş">
				  </form>
				  <div class="login-help">
					<a href="register.php">Kayıt Ol</a> - <a href="#">Şifremi Unuttum</a>
				  </div>
				  
				</div>
		</div>
	</div>
<!--login popupı -->  
  
  <body>
    <div class="blog-masthead">
      <div class="container">
	  <form action="index.php" method="post" size="8">
        <nav class="blog-nav">
		  <a class="blog-nav-item active" href="index.php">AnaSayfa</a>
      <a class="blog-nav-item" href="#" data-toggle="modal" data-target="#login-modal">Giriş</a>
		  <a class="blog-nav-item" href="register.php">Kayıt Ol</a>
      <a class="blog-nav-item" href="#">Top 100</a>
      <a class="blog-nav-item" href="#">Favori Kitaplar</a>
      <a class="blog-nav-item" href="#">Hakkımızda</a>
		  <a class="blog-nav-item" href="#">İletişim</a>

	<div class="blog-nav- pull-right">	   
 <form action="index.php" method="get">
 <input id="searchForm" type="text" name="ara" >
 <button id="search" type="submit"><i class="fa fa-search"></i></button>
</form>


	</div>
      </div>
	</div>
	     </nav>
  </body>
	  </form>