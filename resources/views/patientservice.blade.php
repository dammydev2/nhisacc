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

    <div class="col-sm-12">
     <!-- <h3 align="center">Drug Live search </h3><br /> -->
     <div class="panel panel-default">
      <div class="panel-heading">Search Service(s)</div>
      <div class="panel-body">
        <div class="myrespons"></div>
        <div class="form-group">
          <input type="text" name="search" id="search" class="form-control" placeholder="Search Drugs" style="border-radius: 5px 5px 0 0;" />
          <div class="col-sm-12 resultdata" style="padding: 5px;border: 1px solid #e1e1e1;border-top: none;display: none; z-index: 999">

          </div>
        </div>
        <div class="col-sm-12">
          <h3 align="center">Total Data : <span id="total_records"></span></h3>
          <form method="post" action="{{ url('/service_enter') }}" id="form1">
            {{ csrf_field() }}

            <input type="hidden" name="rec" value="{{ Session::get('rec') }}">
            <input type="hidden" name="patient" value="{{ Session::get('patient') }}">

          <table class="table table-striped table-bordered items">
           <thead>
            <tr>
             <th>Details</th>
             <th>Days/visits</th>
             <th>Price</th>
             <th></th>
           </tr>
         </thead>
         <tbody>

         </tbody>
         <tfoot>
           <tr>
             <th colspan="3" class="text-right">Total</th>
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
     url:"{{ route('live_search2.action') }}",
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
    nhis = el.data("nhis")
    description = el.data("description")
    // qty2 = el.data("qty2")
    // stockid = el.data("id")

    $("div.resultdata").slideUp();
    $("div.resultdata").html("");
    $("input#search").val("");

    tdata = "<tr>"

    tdata += "<td>"+name+"<input type='hidden' name='name[]' value='"+name+"' class='form-control qty'/></td>"
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
