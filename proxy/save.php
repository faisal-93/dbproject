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

$data1 = $proxy->read('https://proxy11.com/api/proxy.json?key=MTMxMQ.XtfXog.kSYsa-YIvr1LwrZOZp4VB6oTYyk');
$data2= $proxy->read('https://free-proxy-list.net/');
$data = array_merge($data1,$data2);
echo "Reading data from API successful!".PHP_EOL; 
//var_dump($data);
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
        $proxy->provider = $item->tproviderype;
        $proxy->save();
    }

?>