@foreach($data as $row)
<tr>
       <td>{{ $row->id}}</td>
       <td>{{ $row->NHIS_code }}</td>
       <td>{{ $row->description }}</td>
       <td>{{ $row->price }}</td>
       <td> {{ $row->type }} </td>
       <td><a href="{{ url('/editservice/'.$row->id) }}"><i class="fa fa-edit"></i></a></td>
       <td><a href="{{ url('/servicedelete/'.$row->id) }}"><i class="fa fa-trash btn btn-danger"></i></a></td>
      </tr>
      @endforeach
      <tr>
       <td colspan="3" align="center">
        {!! $data->links() !!}
       </td>
      </tr>