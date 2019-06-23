<div class="col-sm-6" id="flow">
<br/>


<div class="row">
    <div class="col-md-4"><button data-toggle="modal" data-target="#ShareModal" type="button" class="btn btn-success shareButton"><i class="fa fa-wechat"></i>&nbsp;&nbsp;İleti Paylaş</button></div>
    <div class="col-md-4"><button data-toggle="modal" data-target="#QuatationModal" type="button" class="btn btn-info shareButton"><i class="fa fa-quote-right"></i>&nbsp;&nbsp;Alıntı Paylaş</button></div>
    <div class="col-md-4"><button data-toggle="modal" data-target="#BookModal" type="button" class="btn btn-danger shareButton"><i class="fa fa-book"></i>&nbsp;&nbsp;Kitap Paylaş</button></div>
</div>

<!-- İleti Paylaş -->
<div class="modal fade" id="ShareModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="FormMessage" class="form-horizontal">
      <div class="modal-content">
        <div class="modal-header btn-success">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="text-center"  id="myModalLabel">İleti Paylaş</h4>
        </div>
        <div class="modal-body">
          <!-- TextArea Message -->
          <div class="control-group">
            <label for="sharedata">Gönderi Oluştur</label>
            <textarea id="sharedata" name="sharedata" class="form-control" rows="10" placeholder="Şiir, makale veya deneme yaz. Ya da düşüncelerini aktar."></textarea>
          </div>
          <br />
          <div class="control-group">
            <div id="ShareWarning"></div>
          </div>
        </div>
        
        <div class="modal-footer">
          <div class="text-center">
            <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="fa fa-times"></span> Vazgeç</button>
            <button id="ShareSend" type="button" class="btn btn-success" ><span class="fa fa-send"></span> Paylaş</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- İleti Paylaş Bitiş -->

<!-- Alıntı Paylaş -->
<div class="modal fade" id="QuatationModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="FormMessage" class="form-horizontal">
      <div class="modal-content">
        <div class="modal-header btn-info">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="text-center"  id="myModalLabel">Alıntı Paylaş</h4>
        </div>
        <div class="modal-body">
          <!-- TextArea Message -->
          <div class="control-group">
            <label for="quatation">Alıntı:</label>
            <textarea id="quatation" name="quatation" class="form-control" rows="6" placeholder="Alıntıyı giriniz."></textarea>
          </div>
          <br />
          <div class="control-group">
            <label for="quatationAuthor">Yazar/Söyleyen/Alıntı Sahibi:</label>
            <select id="quatationAuthor" class="form-control" name="quatationAuthor">
			<option>Yazar Seçin</option>
            </select>
          </div>          
          <br />
          <div class="control-group">
            <label for="quatationBook">Kitap Adı:</label>
            <select id="quatationBook" class="form-control" name="quatationBook">
            </select>
          </div>
          <div class="control-group">
            <div id="QuatationWarning"></div>
          </div>
        </div>
        <div class="modal-footer">
          <div class="text-center">
            <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="fa fa-times"></span> Vazgeç</button>
            <button id="QuatationSend" type="button" class="btn btn-success"><span class="fa fa-send"></span> Paylaş</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- Alıntı Paylaş Bitiş -->

<!-- Kitap Paylaş -->
<div class="modal fade" id="BookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="FormMessage" class="form-horizontal">
      <div class="modal-content">
        <div class="modal-header btn-danger">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="text-center"  id="myModalLabel">Kitap Paylaş</h4>
        </div>
        <div class="modal-body">
          <div class="control-group">
            <label for="AuthorName">Yazar Adı:</label>
            <select id="AuthorName" class="form-control" name="AuthorName">
              <option>Yazar Seçin</option>
            </select>
          </div>          
          <br />
          <div class="control-group">
            <label for="BookName">Kitap Adı:</label>
            <select id="BookName" class="form-control" name="BookName">

            </select>
          </div>
          <div class="control-group">
            <div id="BookWarning"></div>
          </div>
        </div>
        <div class="modal-footer">
          <div class="text-center">
            <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="fa fa-times"></span> Vazgeç</button>
            <button id="BookSend" type="button" class="btn btn-success"><span class="fa fa-send"></span> Paylaş</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- Kitap Paylaş Bitiş -->
</div>