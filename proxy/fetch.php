<?php

//fetch.php
$api_url = "http://localhost/dbproject/objects/test_api.php?action=fetch_all";

$client = curl_init($api_url);

curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($client);

$result = json_decode($response);

$output = '';

if(count($result) > 0)
{
	foreach($result as $row)
	{
		$output .= '
		<tr>
			<td>'.$row->ip.'</td>
			<td>'.$row->port.'</td>
			<td>'.$row->country_code.'</td>
			<td>'.$row->country.'</td>
			<td>'.($row->type == '0'? "HTTP" : "HTTPS").'</td>
			<td>'.$row->updated_at.'</td>
		</tr>
		';
	}
}
else
{
	$output .= '
	<tr>
		<td colspan="6" align="center">No Data Found</td>
	</tr>
	';
}

echo $output;

?>