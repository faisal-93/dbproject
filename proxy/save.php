<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// get database connection
include_once '../config/database.php';

// instantiate product object
include_once '../objects/proxy.php';

//instantiate database object
$database = new Database();
$db = $database->getConnection();

//instantiate proxy object
$proxy = new Proxy($db);

//read data from API
echo "Initiating read data from API...".PHP_EOL;
$data = $proxy->read();
echo "Reading data from API successful!".PHP_EOL; 

echo "Initiating save data in database...".PHP_EOL;
    foreach ($data as $item) {
        $proxy->created_at = $item->createdAt;
        $proxy->updated_at = $item->updatedAt;
        $proxy->ip = $item->ip;
        $proxy->port = $item->port;
        $proxy->country = $item->country;
        $proxy->country_code = $item->country_code;
        $proxy->load_time = $item->time;
        $proxy->type = $item->type;
        $proxy->provider = "proxy11";
        $proxy->save();
    }

?>