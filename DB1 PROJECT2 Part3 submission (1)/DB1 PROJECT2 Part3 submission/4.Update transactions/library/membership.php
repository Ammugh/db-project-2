<!DOCTYPE html>
<html lang="en">
<head>
	<title>MEMBERSHIP</title>
	</head>
	<body>
		<header>
			<h1>Membership Renewal</h1>

		</header>
		<form method="POST">
			<div>
			<label for id="MEM_SSN">SSN</label>
			<input type="text" name="MEM_SSN" id="MEM_SSN">
			</div>

			<div>
				<h3>Click Yes if you like to renew the membership :  </h3>
			</div>

			<div>
				<label for id="yes">Yes</label>
			<input type="radio" name="yes" id="yes">
			</div>

			<div>
				<label for id="no">No</label>
			<input type="radio" name="yes" id="no">
			</div>


			<div>
				<input type="submit" name="submit" id="submit" value="submit">
			</div>

		</form>

	</body>
	</html>


<?php

$servername = "localhost";
$username = "root";

// Creating the connection
$conn = new mysqli($servername, $username ,'','library');

// Checking the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['submit'])){
$MEM_SSN = $_POST['MEM_SSN'];
$current_date = date("Y-m-d");
$new_expire_date = date('Y-m-d', strtotime($current_date. ' + 4 years'));



$sql1 = "SELECT * FROM MEMBERSHIP WHERE MEM_SSN = '$MEM_SSN'";
$result = $conn->query($sql1);

if ($result->num_rows > 0) {

	  	  while($row = $result->fetch_assoc()) {

	  	  	      $EXPIRE_DATE = $row["EXPIRE_DATE"];



	  	  	      if ($EXPIRE_DATE < $current_date) {

	  	  	      	$sql2 = "UPDATE MEMBERSHIP set LEND_DATE = '$current_date' where MEM_SSN = '$MEM_SSN'";

	  	  	      	$sql3 = "UPDATE MEMBERSHIP set EXPIRE_DATE = '$new_expire_date' where MEM_SSN = '$MEM_SSN'";

	  	  	      	echo "Your membership is expired and it has been renewed. $new_expire_date";
	  	  	      }
	  	  	      else{
	  	  	      	echo "You have a membership which is valid";
	  	  	      }

	  	  	       if ($conn->query($sql2) === TRUE) {

} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


	  	  	      if ($conn->query($sql3) === TRUE) {

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



}
}

	else
	{
		echo "Sorry! You are not a member of our library. Please fill member form to become a member.";
	}
}
?>
