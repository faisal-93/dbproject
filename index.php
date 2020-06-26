<!DOCTYPE html>
<html>
	<head>
		<title>Datenbanken Project</title>	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" />
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		
		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
		
	</head>
	<body>
		<div class="container">
			<br />
			<h3 align="center">Datenbanken Project</h3>
			<br />
			<div class="table-responsive">
				<table id="example" class="table table-striped table-bordered" style="width:100%">
					<thead>
						<tr>
							<th>IP</th>
							<th>Port</th>
							<th>Country Code</th>
							<th>Country</th>
							<th>Protocol</th>
							<th>Last Update Time</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
		</div>
	</body>
</html>

<script type="text/javascript">

$(document).ready(function(){

	$('#example').DataTable({
        paging: true,
        scrollX: true,
        lengthChange : true,
        searching: true,
        ordering: true
      });

	fetch_data();

	function fetch_data()
	{
		$.ajax({
			url:"proxy/fetch.php",
			success:function(data)
			{
				$('tbody').html(data);
			}
		})
	}

});
</script>