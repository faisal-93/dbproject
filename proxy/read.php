<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once '../config/database.php';
include_once '../objects/proxy.php';

// instantiate database and product object
$database = new Database();
$db = $database->getConnection();

// initialize object
$proxy = new Proxy($db);
// this is 

// query products
echo "Initiating read data from API...".PHP_EOL;
$data = $proxy->read();
$num = count($data);

// check if more than 0 record found
if($num>0) {
    // set response code - 200 OK
    http_response_code(200);
    echo "Reading data from API successful!".PHP_EOL;  
    // show products data in json format
    $response= json_encode($data);
    echo $response.PHP_EOL;
}
else {
    // set response code - 404 Not found
    http_response_code(404);
    // tell the user no products found
    echo json_encode(array("message" => "No data found."));
}