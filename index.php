<!DOCTYPE html>
<html class="no-js">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Datenbanken</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
    </head>
    <body>
    
    
        <h1>Proxy List</h1>
        <div class="container">         
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>IP Address</th>
                    <th>Country</th>
                    <th>Country Code</th>
                    <th>Load Time</th>
                    <th>Type</th>
                    <th>Provider</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                    $sql = "SELECT * FROM proxy_lsit";
                    $result = mysqli_query($link, $sql);
                    
                    if (mysqli_num_rows($result) > 0) {
                    // output data of each row
                    while($row = mysqli_fetch_assoc($result)) {
                        //echo "id: " . $row["id"]. " - Name: " . $row["ip"]. " " . $row["port"]. "<br>";
                        echo '<tr>';
                        echo '<td>'.$row["id"].'</td>';
                        echo '<td>'.$row["port"].'</td>';
                        echo '<td>'.$row["country"].'</td>';
                        echo '<td>'.$row["country_code"].'</td>';
                        echo '<td>'.$row["load_time"].'</td>';
                        echo '<td>'.$row["type"].'</td>';
                        echo '<td>'.$row["provider"].'</td>';
                        echo '</tr>';
                    }
                    } else {
                    echo "<tr>0 results</tr>";
                    }
                ?> 
                
                </tbody>
            </table>
            </div>
        
        <script src="" async defer></script>
    </body>
</html>