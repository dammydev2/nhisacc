@foreach($data as $row)
<tr>
       <td>{{ $row->id}}</td>
       <td>{{ $row->name }}</td>
       <td>{{ $row->category }}</td>
       <td>{{ $row->dosage }}</td>
       <td>{{ $row->strength }}</td>
       <td>{{ $row->presentation }}</td>
       <td>{{ $row->price }}</td>
       <td><a href="{{ url('/edit_drug/'.$row->id) }}"><i class="fa fa-edit"></i></a></td>
      </tr>
      @endforeach
      <tr>
       <td colspan="3" align="center">
        {!! $data->links() !!}
       </td>
      </tr>