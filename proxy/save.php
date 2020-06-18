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

$database = new Database();
$db = $database->getConnection();

$temp = new Proxy($db);


$data = $temp->read();
$response= json_encode($data);
$arr= json_decode($response,true);

//echo $arr['country'];
$pid = 0;
    foreach ($arr as $item) {

        $proxy = new Proxy($db);
        //$proxy->id = $item['ip'];
        $proxy->created_at = $item['createdAt'];
        $proxy->updated_at = $item['updatedAt'];
        $proxy->ip = $item['ip'];
        $proxy->port = $item['port'];
        $proxy->country = $item['country'];
        $proxy->country_code = $item['country_code'];
        $proxy->load_time = $item['time'];
        $proxy->type = $item['type'];
        $proxy->provider = "proxy11";
        //var_dump($proxy);
        $proxy->save();


//    if($proxy->save()){
//        // set response code - 201 created
//        http_response_code(201);
//
//        // tell the user
//        echo json_encode(array("message" => "Product was created."));
//    }

    }

?>