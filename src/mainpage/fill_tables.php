<?php
// Database connection parameters
$host = "localhost"; // Change this to your database host
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$database = "credit_calculator"; // Change this to your database name

// Create a database connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch data
$sql = "SELECT * FROM tárgy ORDER BY Ajánlott_Félév";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Initialize an array to store targyak
    $targyak = array();

    // Loop through the result set and fetch each targy
    while ($targy = $result->fetch_assoc()) {
        // Append the targy to the $targyak array
        $targyak[] = $targy;
    }

    // Close the result set
    $result->close();
} else {
    echo "No records found";
}

$max_felev = 7;

// SQL query to fetch data
$sql = "SELECT * FROM előfeltétel";

$result = $conn->query($sql);
$feltetelek = array();
if ($result->num_rows > 0) {
    // Initialize an array to store targyak
    

    // Loop through the result set and fetch each targy
    while ($feltetel = $result->fetch_assoc()) {
        // Append the targy to the $targyak array
        $feltetelek[] = $feltetel;
    }

    // Close the result set
    $result->close();
} else {
    echo "No records found";
}




function createCard($kod, $nev, $kredit){
    global $feltetelek;
    echo "<tr><td id=\"" . $kod . "\"
    elofeltetelek=\"";
    foreach($feltetelek as $feltetel){
    if($feltetel["Tárgy_Kód"] == $kod){
        echo $feltetel["Előfeltétel_ID"] . ";";
    }
    }   
    echo"\">" . $nev . "<br> Tárgy_Kód: " . $kod . "<br> Kredit: " . $kredit . "</td></tr>"; 
}

// Close the database connection
$conn->close();

$current = 0;
foreach($targyak as $targy){
    if($current != $targy["Ajánlott_Félév"]){
        $current++;
        if($current > 1){
            echo "</tbody></table>";
        }
        if($current < $max_felev){
            echo "<table class=\"felevTable\">
                    <thead>
                        <tr>
                            <th class=\"felev\">" . $current . ". félév</th>
                        </tr>
                    </thead>
                <tbody>";
        }
        
    }
    createCard($targy["Tárgy_Kód"],$targy["Név"],$targy["Kredit"],$targy["Ajánlott_Félév"]);
}
echo "</tbody></table>";
?>
