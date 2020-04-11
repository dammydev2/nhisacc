@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="{{ URL::asset('js/ajax.js') }}"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
      div.resultdata div:hover {
        background-color: #e1e1e1;
      }
    </style>

    <!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add new Drug <i class="fa fa-plus"></i></button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        
<form method="post" action="{{ url('/enterdrug') }}">

        @csrf

        <div class="form-group">
          <label>Drug Category</label>
          <input list="browsers" class="form-control" name="category">
          <datalist id="browsers">
            @foreach($data as $row)
            <option value="{{ $row->name }}">
              @endforeach
            </datalist>
            <!-- <a href="{{ url('/add_category') }}">add new category</a> -->
          </div>

          <div class="form-group">
            <label class="control-label">Drug Name</label>
            <div class="controls">
              <input type="text" class="form-control" name="name" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Dosage Form</label>
            <div class="controls">
              <input type="text" class="form-control" name="dosage" id="HMO" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Strength</label>
            <div class="controls">
              <input type="text" class="form-control" name="strength" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Presentation</label>
            <div class="controls">
              <input type="text" class="form-control" name="presentation" id="required" required="required">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">Price</label>
            <div class="controls">
              <input type="text" class="form-control" name="price" id="required" required="required" onkeypress="return isNumberKey(event)">
            </div>
          </div>

          <input type="submit" value="add drug" name="" class="btn btn-primary btn-block">

        </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

    <div class="col-sm-12">
     <!-- <h3 align="center">Drug Live search </h3><br /> -->
     <div class="panel panel-default">
      @if(Session::has('success'))
      <div class="alert alert-success">
        {{ Session::get('success') }}
      </div>
      @endif
      <div class="panel-heading">Search Drug(s)</div>
      <div class="panel-body">
        <div class="myrespons"></div>
        <div class="form-group">
          <input type="text" name="search" id="search" class="form-control" placeholder="Search Drugs" style="border-radius: 5px 5px 0 0;" />
          <div class="col-sm-12 resultdata" style="padding: 5px;border: 1px solid #e1e1e1;border-top: none;display: none;">

          </div>
        </div>
        <div class="col-sm-12">
          <h3 align="center">Total Data : <span id="total_records"></span></h3>
          <form method="post" action="{{ url('/sale_enter') }}" id="form1">
            {{ csrf_field() }}

            <input type="hidden" name="rec" value="{{ Session::get('rec') }}">
            <input type="hidden" name="patient" value="{{ Session::get('patient') }}">

          <table class="table table-striped table-bordered items">
           <thead>
            <tr>
             <th>Item Name</th>
             <th>Dosage</th>
             <th>Qty</th>
             <th>10% deduction</th>
             <th>Amount</th>
             <th></th>
           </tr>
         </thead>
         <tbody>

         </tbody>
         <tfoot>
           <tr>
             <th colspan="4" class="text-right">Total</th>
             <th colspan="2">&#8358;<span class="total">0.00</span></th>
           </tr>
         </tfoot>
       </table>
       <input type="submit" name="" value="continue" class="btn btn-primary">
     </form>
     </div>
   </div>    
 </div>
</div>



<script type="text/javascript">
  var form1 = document.getElementById('form1');
form1.onsubmit = function(e){
    var form = this;
    e.preventDefault();
    if(confirm("Are you sure you wish to submit? You cant undo"))
        form.submit();
}
</script>

<script>

  var added = [];
  $(document).ready(function(){

   fetch_customer_data();

   function fetch_customer_data(query = '')
   {
    $.ajax({
     url:"{{ route('live_search.action') }}",
     method:'GET',
     data:{query:query},
     dataType:'json',
     success:function(data)
     {
      if(data.total_data > 0) {
        $(".myrespons").html("");
        $("div.resultdata").slideDown();
        $('div.resultdata').html(data.table_data);
      } else {
        $(".myrespons").html("<div class='alert alert-danger'>No Data Found</div>");
      }
      $('#total_records').text(data.total_data);
    }
  })
  }

  $(document).on("click","div.rst", function () {
    el = $(this);

    name = el.text();
    if(added.indexOf(name) > -1) {
     $("div.resultdata").slideUp();
     $("div.resultdata").html("");
     $("input#search").val("");
   } else {
    price = el.data("price")
    dosage = el.data("dosage")
    percent = price * 0.1;
    amt = price - percent;
    // qty2 = el.data("qty2")
    // stockid = el.data("id")

    $("div.resultdata").slideUp();
    $("div.resultdata").html("");
    $("input#search").val("");

    tdata = "<tr>"

    tdata += "<td>"+name+"<input type='hidden' name='name[]' value='"+name+"' class='form-control qty'/></td>"
    tdata += "<td>"+dosage+"<input type='hidden' name='dosage[]' value='"+dosage+"' class='form-control qty'/></td>"
    tdata += "<td><input type='number' name='qty[]' min='1' value='1' class='form-control qty'/></td>"
    // tdata += "<td>"+percent+"<input type='hidden' name='percent[]' value='"+percent+"' class='form-control qty'/></td>"
    tdata += "<td>"+price+"</td><td>&#8358;<span class='tamount'>"+price+"</span><input type='hidden' name='price[]' value='"+price+"' /></td>"
    // tdata += "<td>&#8358;<span class='tamount'>"+amt+"</span><input type='hidden' name='amount[]' value='"+amt+"' /></td>"
    tdata += "<td><a href='#' class='btn btn-danger btn-xs rm'><i class='fa fa-trash'></i></a></td>"
    tdata += "</tr>";
    $("table.items tbody").append(tdata);
    added.push(name);
    sumup()
  }
})

$(document).on("click","a.rm", function () {

  txt = $(this).parents("tr").find("td:first").text()
  $(this).parents("tr").remove();
  ind = added.indexOf(txt);
  added.splice(ind,1)
  sumup();

})

$(document).on("change", "input.qty", function () {
  v = $(this).val();
  prc = parseInt($(this).parents("td").next().text())
  console.log(v)

  tamt = prc * v

  $(this).parents("td").next().next().find("span.tamount").html(tamt);
  sumup()
})

  $(document).on('keyup', '#search', function(){
    if($(this).val() == "") {
      $("div.resultdata").slideUp();
    }
    var query = $(this).val();
    fetch_customer_data(query);
  });
});

  function sumup() {
    len = $("span.tamount").length
    sum = 0;
    for(a = 0; a < len; a++) {
      v = parseInt($("span.tamount:eq("+a+")").text());
      sum += v
    }

    $("tfoot span.total").html(sum);
  }
</script>











      </div>
    </div>
    @endsection
