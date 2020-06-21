<?php

//test_api.php

include('proxy.php');
include_once '../config/database.php';

// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
$api_object = new Proxy($db);

if($_GET["action"] == 'fetch_all')
{
	$data = $api_object->fetch_all();
}


echo json_encode($data);

?>