<?php
class Proxy {

    // database connection and table name
    private $conn;
    private $table_name = "proxy_list";

    // object properties
    public $id;
    public $created_at;
    public $updated_at;
    public $ip;
    public $port;
    public $country;
    public $country_code;
    public $load_time;
    public $type;
    public $provider;

    
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function fetch_all(){
		$query = "SELECT * FROM proxy_list ORDER BY id";
		$statement = $this->conn->prepare($query);
		
        try{
            $statement->execute();
            while($row = $statement->fetch(PDO::FETCH_ASSOC))
			{
				$data[] = $row;
			}
            return $data;
        }catch(PDOException $exception){
            echo "Fetch execute error: " . $exception->getMessage();
        }
	}
    // read products
    function read($url) {
        switch ($url) {
            case "https://proxy11.com/api/proxy.json?key=MTMxMQ.XtfXog.kSYsa-YIvr1LwrZOZp4VB6oTYyk":
                //CODE
                $json_data = file_get_contents($url);
                $response_data = json_decode($json_data);
                $proxy_data = $response_data->data;
                foreach ($proxy_data as $object) {
                    $object= $object->{"provider"} = "proxy11";
                }
                print_r($proxy_data);
                return $proxy_data;
                break;
            case "https://free-proxy-list.net/":
                //CODE
                $page = file_get_contents($url);
                preg_match_all("/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}<\/td><td>[0-9]{1,5}<\/td><td>[A-Z]{1,2}<\/td><td class='hm'>[A-Za-z ]{1,30}<\/td><td>[a-z ]{1,20}<\/td><td class='hm'>[a-z]{1,3}<\/td><td class='hx'>[a-z]{1,3}<\/td><td class='hm'>[a-z 0-9]{1,20}/", $page, $matches);
                $return_data = array();
                foreach($matches[0] as $match) {
                    //$words = explode("</td>", $match);
                    $replace_chars = array("</td><td>", "</td><td class='hm'>", "</td><td class='hx'>");
                    $replace_with = array("<>","<>","<>");
                    $removed_str = str_replace($replace_chars, $replace_with, $match);
                    $explode_str = explode("<>", $removed_str);
                    //print_r($explode_str);
                    $obj = (object) array ('ip' => $explode_str[0], 
                                        'port' => $explode_str[1],
                                        'country_code' => $explode_str[2],
                                        'country' => $explode_str[3],
                                        'updated_at' => $explode_str[7],
                                        'load_time' => "0",
                                        'type' => ($explode_str[6] == 'yes' ? '1' : '0'),
                                        'provider' => "free-proxy-net" ); 
                    $return_data[] = $obj;
                }
                print_r($return_data);
                return $return_data;
                break;
            default:
              //DO NOTHING 
          }
    }

    function save() {
        $query = "INSERT INTO " . $this->table_name . " SET created_at=:created_at, updated_at=:updated_at, ip=:ip, port=:port , country=:country , country_code=:country_code , load_time=:load_time , type=:type , provider=:provider";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->created_at=htmlspecialchars(strip_tags($this->created_at));
        $this->updated_at=htmlspecialchars(strip_tags($this->updated_at));
        $this->ip=htmlspecialchars(strip_tags($this->ip));
        $this->port=htmlspecialchars(strip_tags($this->port));
        $this->country=htmlspecialchars(strip_tags($this->country));
        $this->country_code=htmlspecialchars(strip_tags($this->country_code));
        $this->load_time=htmlspecialchars(strip_tags($this->load_time));
        $this->type=htmlspecialchars(strip_tags($this->type));
        $this->provider=htmlspecialchars(strip_tags($this->provider));

        // bind values
        $stmt->bindParam(":created_at", $this->created_at);
        $stmt->bindParam(":updated_at", $this->updated_at);
        $stmt->bindParam(":ip", $this->ip);
        $stmt->bindParam(":port", $this->port);
        $stmt->bindParam(":country", $this->country);
        $stmt->bindParam(":country_code", $this->country_code);
        $stmt->bindParam(":load_time", $this->load_time);
        $stmt->bindParam(":type", $this->type);
        $stmt->bindParam(":provider", $this->provider);

        // execute query
        try{
            $stmt->execute();
        }catch(PDOException $exception){
            echo "Insert execute error: " . $exception->getMessage();
        }
    }
}
