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

    public $api_endpoint = 'https://proxy11.com/api/proxy.json?key=MTMxMQ.XtfXog.kSYsa-YIvr1LwrZOZp4VB6oTYyk';
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function fetch_all()
	{
		$query = "SELECT * FROM proxy_list ORDER BY id";
		$statement = $this->conn->prepare($query);
		if($statement->execute())
		{
			while($row = $statement->fetch(PDO::FETCH_ASSOC))
			{
				$data[] = $row;
			}
            return $data;
            echo $data;
		}
	}
    // read products
    function read() {        
        //reading data from API
        $json_data = file_get_contents($this->api_endpoint);
        //convert json data to array
        $response_data = json_decode($json_data);
        $proxy_data = $response_data->data;  
        return $proxy_data;
    }

    function save() {
       
        // checking Duplicate entry before saving 
        
        $query = "SELECT * FROM proxy_list where ip='$this->ip'";
       
        $statement = $this->conn->prepare($query);
       // $statement->bindValue("':$this->ip'", $_POST['ip'], PDO::PARAM_INT);
        $statement->execute();
        $count=(int)$statement->fetchColumn();
    
        if ($count)
         {
         echo "This '$this->ip' has already exists.".PHP_EOL;
         }
         else{
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
                echo "Data Saved Successfully".PHP_EOL;
            }catch(PDOException $exception){
                echo "Insert execute error: " . $exception->getMessage();
            }
         }

       
    }
}
