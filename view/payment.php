<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <link href="../css/upskill.css" rel="stylesheet">

    <!--JQuery CDN-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

    <!-- Google Font Link for Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

    <link href="../css/My.css" rel="stylesheet" type="text/css">

      <title>Upskill</title>
</head>
<body>
      <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="home" viewBox="0 0 16 16">
          <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
        </symbol>
        <symbol id="speedometer2" viewBox="0 0 16 16">
          <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
          <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
        </symbol>
        <symbol id="table" viewBox="0 0 16 16">
          <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
        </symbol>
        <symbol id="people-circle" viewBox="0 0 16 16">
          <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
          <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
        </symbol>
        <symbol id="grid" viewBox="0 0 16 16">
          <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
        </symbol>
      </svg>

      <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
            <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="portal.php">Certify</a>
            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

          <label>
              <input type="search" id="liveSearch" autocomplete="off" placeholder="Search..." spellcheck="false" class="search"/>
          </label>

          <!-- Div to display search results -->
          <div id="searchResult" class="table-responsive"></div>

          <!--JQuery Part-->

          <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <script type="text/javascript">
              $(document).ready(function () {
                  $("#liveSearch").on("keyup", function () {
                      var value = $(this).val().toLowerCase().trim(); // Get the search value in lowercase

                      if (value === "") {
                          // Show all rows if search box is empty
                          $("table tbody tr").show();
                          return;
                      }

                      // Create a variable to store all rows matching the search
                      var matchingRows = [];

                      $("table tbody tr").each(function () {
                          var rowVisible = false;

                          // Loop through each cell in the row
                          $(this).find("td").each(function () {
                              var cellText = $(this).text().toLowerCase().trim();

                              // Check for a match
                              if (cellText.includes(value)) {
                                  rowVisible = true;
                              }
                          });

                          // If the row matches, store it in the matchingRows array
                          if (rowVisible) {
                              matchingRows.push(this);
                          }
                      });

                      // Show only rows with matching values
                      $("table tbody tr").hide(); // Hide all rows initially
                      $(matchingRows).show(); // Show the rows that matched the search value
                  });
              });
          </script>


          <div class="navbar-nav">
              <div class="nav-item text-nowrap">
                <a class="nav-link px-3" href="../index.php">Sign out</a>
              </div>
            </div>
      </header>
<!--Sidebar Menu-->
      <div class="mainUpSkill">
        <div class="sidebarUpSkill">
              <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 240px; height:92vh;">
                    <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                    <a href="portal.php" class="nav-link link-dark" aria-current="page">
                          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
                          Home
                    </a>
                    </li>
                    <li>
                    <a href="upskill.php" class="nav-link link-dark">
                          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
                          Upskill
                    </a>
                    </li>
                    <li>
                    <a href="checker.php" class="nav-link link-dark">
                          <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
                          Certificate Checker
                    </a>
                    </li>
                    <li>
                    <a href="payment.php" class="nav-link active">
                          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
                          Payment
                    </a>
                    </li>
                    </ul>
              </div>   
      </div>
      <div class="tableUpSkill">
            <h2>Payment Details of Skill Management System</h2>
            <div class="table-responsive">
              <table class="table table-striped table-sm">
                <thead>
                  <tr>
                    <th scope="col">Transaction No</th>
                    <th scope="col">Staff ID</th>
                    <th scope="col">Total Amount</th>
                    <th scope="col">Payment Status</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                      include_once "C:/xampp/htdocs/certify-main/controller/mainController.php";
                      $staff = getPayment();

                      foreach($staff as $value){
                  ?>
                      <?= "<tr> <th>" . $value['Transaction_No'] . "</th> <th>" . $value['Staff_ID'] . "</th> <td>" . $value['Total_Amount'] ."</td> <td>" . $value['Payment_Status'] . "</td>"?>
                        <td>
                          <a href="../functions/pay_approve.php?id=<?= $value['Transaction_No'] ?>" class="btn btn-success btn-custom"> Approve</a>
                          <a href="../functions/pay_reject.php?id=<?= $value['Transaction_No'] ?>" class="btn btn-danger btn-custom"> Reject</a>
                        </td>
                  <?php
                      }
                  ?>
                </tbody>
              </table>
            </div>
          </main>
        </div>
      </div> 
    </div>
  
</body>

<?php
// Database connection settings
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "certificatedb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if input is set and sanitize it
$input = isset($_POST['input']) ? trim($_POST['input']) : '';

if (!empty($input)) {
    // Use a prepared statement to prevent SQL injection
    $query = "SELECT * FROM payment 
              WHERE Staff_ID LIKE ? 
              OR Transaction_No LIKE ? 
              OR Payment_Status LIKE ?";

    // Prepare the statement
    $stmt = $conn->prepare($query);
    if ($stmt) {
        // Bind parameters and add wildcards for LIKE
        $search = "%$input%";
        $stmt->bind_param("sss", $search, $search, $search);

        // Execute the statement
        $stmt->execute();
        $result = $stmt->get_result();

        // Check if any rows are returned
        if ($result->num_rows > 0) {
            echo '<table class="table table-striped table-sm">';
            echo '<thead>
                    <tr>
                        <th scope="col">Transaction No</th>
                        <th scope="col">Staff ID</th>
                        <th scope="col">Total Amount</th>
                        <th scope="col">Payment Status</th>
                        <th scope="col">Actions</th>
                    </tr>
                  </thead>';
            echo '<tbody>';

            while ($row = $result->fetch_assoc()) {
                echo '<tr>
                        <td>' . htmlspecialchars($row["Transaction_No"]) . '</td>
                        <td>' . htmlspecialchars($row["Staff_ID"]) . '</td>
                        <td>' . htmlspecialchars($row["Total_Amount"]) . '</td>
                        <td>' . htmlspecialchars($row["Payment_Status"]) . '</td>
                        <td>
                            <a href="../functions/pay_approve.php?id=' . urlencode($row['Transaction_No']) . '" class="btn btn-success btn-sm">Approve</a>
                            <a href="../functions/pay_reject.php?id=' . urlencode($row['Transaction_No']) . '" class="btn btn-danger btn-sm">Reject</a>
                        </td>
                      </tr>';
            }
            echo '</tbody></table>';
        } else {
            echo '<p class="text-danger">No matching results found.</p>';
        }

        // Close the prepared statement
        $stmt->close();
    } else {
        echo '<p class="text-danger">Error preparing statement: ' . htmlspecialchars($conn->error) . '</p>';
    }
}

// Close the database connection
$conn->close();
?>



</html>