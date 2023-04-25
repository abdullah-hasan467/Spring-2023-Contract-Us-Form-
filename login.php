<?php
    $host = "localhost";
    $db = "php_test";
    $username = $_POST["username"];
    $password = $_POST["password"];
    $id_counter = 0;

    $link = mysqli_connect($host, $username, $password, $db);

    if($link === false) {
        die("Could not connect". mysqli_connect_error());
    }

    $sql = "SELECT * FROM contactInfo";
    $result = mysqli_query($link, $sql);
    
    
    mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Contact Data</title>
            <style>
      .main {
        background-image: url("images/bg.jpg");
        background-position: center;
        background-size: cover;
      }
      .wrapper {
        width: 80%;
        padding: 36px;
        background-color: white;
        border-radius: 12px;
      }
    </style>
</head>
<body>
  <div class="main min-vh-100 d-flex flex-column justify-content-center align-items-center">
    <div class="wrapper">

    <h1 class="pb-3">Contact Data</h1>
    <?php 
    if ($result->num_rows > 0) {
      echo '<table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">Message</th>
          </tr>
        </thead>
        <tbody>';
          while($row = $result->fetch_assoc()) {
            $id_counter++;
            echo '<tr>
              <th scope="row">' . $id_counter . '</th>
              <td>'.$row["firstName"]. " ". $row["lastName"].'</td>
              <td>'.$row["email"].'</td>
              <td>'.$row["phone"].'</td>
              <td>'.$row["contactMessage"].'</td>
            </tr>';
          }  
        echo '</tbody></table>';        
      } else {
        echo "<div></div>";
      }
          
    ?>
    </div>
          <div style="color: white">Copyright &copy; by Hasan 2023</div>
  </div>
</body>
</html>