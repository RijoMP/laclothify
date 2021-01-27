<div class="container-fluid" >
    <div class="container" style="padding:20px;" >
        <div class="row">
            <div class="head col-md-12" style="">
                <div class="display-5 font-weight-bold p-3 ">
                <u> Stocks</u>
                </div>
            </div>
        </div>
        <div class="row">
                <div class=" col-lg-12 grid-margin with-shadow" >
                <h6> <i class="mdi mdi-book-plus"></i> Add/Update Stock</h6>
                    <br>
                    
					<form><div class="row">
    <div class="form-group mx-3 col-md-3">
        <label for="name" class="control-label">Product Name</label>
        <div>
            <select class="form-control" style=" height:30px"  id="name" >
            <option selected disabled>Select</option>
            <option>Product1</option>
            <option>Product2</option>
            <option>Product3</option>
            <option>Product4</option>
            <option>Product5</option>
            <option>Product6</option>
            <option>Product7</option>
          </select>
        </div>
       
    </div>
    <div class="form-group mx-3 col-md-2">
        <label for="name2" class="control-label">Stock Count</label>
        <div>
            <input type="number" value=0 min="1" max="1000" class="form-control " style=" height:30px" id="name2" />
        </div>
    </div>
    <div class="form-group mx-3 col-md-2">
        <label for="name3" class="control-label">Discount(%)</label>
        <div>
            <input type="number" value=0 min="0" max="100" class="form-control" style=" height:30px" id="name3" />
        </div>
    </div>
    <div class="form-group mx-3 col-md-2">
        <label for="name4" class="control-label">&nbsp;</label>
        <div>
            <input type="submit" value="Add Stock" class="btn btn-success" style=" height:30px; padding: 0px; padding-left:15px; padding-right:15px;  " id="name4" />
        </div>
    </div>
     </div>
</form>
					




                   </div>
                    
                </div>
                














                <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Current Stock List</h4>
                  
                  <div class="table-responsive">
                    
                    <?php 
                        
                        echo $table;
                        
                      ?>
                  </div>
                </div>
              </div>
            </div>
            

















        </div>
    </div>
</div>
<script>
$(document).ready(function(){
  $("#tets").click(function(){
    $("#tets").hide();
  });
});

</script>