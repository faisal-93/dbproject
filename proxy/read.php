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

// query products
$data = $proxy->read();
$num = count($data);



// check if more than 0 record found
if($num>0){

    // products array
    // $data_arr=array();
    // $data_arr["records"]=array();

    // // retrieve our table contents
    // // fetch() is faster than fetchAll()
    // // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    // while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    //     // extract row
    //     // this will make $row['name'] to
    //     // just $name only
    //     extract($row);

    //     $data_item=array(
    //         "id" => $id,
    //         "created_at" => $created_at,
    //         "updated_at" => $updated_at,
    //         "ip" => $ip,
    //         "port" => $port,
    //         "country" => $country,
    //         "country_code" =>$country_code,
    //         "load_time" =>$load_time,
    //         "type" =>$type,
    //         "provider" => $provider
    //     );

    //     array_push($data_arr["records"], $data_item);
    //}

    // set response code - 200 OK
    http_response_code(200);

    // show products data in json format
    $response= json_encode($data);
    echo $response;
    $arr= json_decode($response,true);



}

else{

    // set response code - 404 Not found
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "No data found.")
    );
}