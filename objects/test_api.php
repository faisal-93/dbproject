<?php

//test_api.php

include('proxy.php');

$api_object = new Proxy();

if($_GET["action"] == 'fetch_all')
{
	$data = $api_object->fetch_all();
}


echo json_encode($data);

?>