<div class="col-sm-6" ">
<br/>


<div class="row">
    <div class="col-md-4"><button data-toggle="modal" data-target="#ShareModalBook" type="button" class="btn btn-success shareButton"><i class="fa fa-wechat"></i>&nbsp;&nbsp;Yorum Paylaş</button></div>
    <div class="col-md-4"><button data-toggle="modal" data-target="#QuatationModalBook" type="button" class="btn btn-info shareButton"><i class="fa fa-quote-right"></i>&nbsp;&nbsp;Alıntı Paylaş</button></div>
    <div class="col-md-4"><button data-toggle="modal" data-target="#BookModalBook" type="button" class="btn btn-danger shareButton"><i class="fa fa-book"></i>&nbsp;&nbsp;Kitap Paylaş</button></div>
</div>

<!-- İleti Paylaş -->
<div class="modal fade" id="ShareModalBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="FormMessage" class="form-horizontal">
      <div class="modal-content">
        <div class="modal-header btn-success">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="text-center"  id="myModalLabel">Yorum Yaz</h4>
        </div>
        <div class="modal-body">
          <!-- TextArea Message -->
          <div class="control-group">
            <label for="sharedata">Gönderi Oluştur</label>
            <textarea id="booksharedata" name="booksharedata" class="form-control" rows="10" placeholder="Kitap hakkındaki düşüncelerini yaz."></textarea>
          </div>
          <br />
          <div class="control-group">
            <div id="BookShareWarning"></div>
          </div>
        </div>
        
        <div class="modal-footer">
          <div class="text-center">
            <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="fa fa-times"></span> Vazgeç</button>
            <button id="BookShareSend" type="button" class="btn btn-success" ><span class="fa fa-send"></span> Paylaş</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- İleti Paylaş Bitiş -->

<!-- Alıntı Paylaş -->
<div class="modal fade" id="QuatationModalBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
            <label for="bookQuatation">Alıntı:</label>
            <textarea id="bookQuatation" name="bookQuatation" class="form-control" rows="6" placeholder="Alıntıyı giriniz."></textarea>
          </div>
          <div class="control-group">
            <div id="QuatationFlowWarning"></div>
          </div>
        </div>
        <div class="modal-footer">
          <div class="text-center">
            <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="fa fa-times"></span> Vazgeç</button>
            <button id="bookQuatationSend" type="button" class="btn btn-success"><span class="fa fa-send"></span> Paylaş</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- Alıntı Paylaş Bitiş -->

<!-- Kitap Paylaş -->
<div class="modal fade" id="BookModalBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="FormMessage" class="form-horizontal">
      <div class="modal-content">
        <div class="modal-header btn-danger">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="text-center"  id="myModalLabel">Kitap Paylaş</h4>
        </div>
        <div class="modal-body">
          <div class="control-group">
            <p>Bu kitabı paylaşmak istediğinize emin misiniz ?</p>
          </div>
          
          <div class="control-group">
            <div id="BookFlowWarning"></div>
          </div>
        </div>
        <div class="modal-footer">
          <div class="text-center">
            <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="fa fa-times"></span> Vazgeç</button>
            <button id="BookFlowSend" type="button" class="btn btn-success"><span class="fa fa-send"></span> Paylaş</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- Kitap Paylaş Bitiş -->
<div class='panel panel-white post panel-shadow'> 
<div class='HeadBookName'><h1 id='HeadBook'></h1>

<p class='summary' id='SummaryText'></p>
<p id='infoAll'></p></div></div>
<div id='bookflow'></div>

</div>
<script src="./views/assets/js/bookFlow.js"></script>