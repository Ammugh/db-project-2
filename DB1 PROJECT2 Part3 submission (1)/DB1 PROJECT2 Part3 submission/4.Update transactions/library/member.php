<!DOCTYPE html>
<html lang="en">
<head>
	<title>ADD NEW MEMBER</title>
	</head>
	<body>
		<header>
			<h1>MEMBER</h1>
			<h3> To add a new member, please enter the below details : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="SSN">SSN</label>
			<input type="text" name="SSN" id="SSN">
			</div>

			<div>
				<label for id="MEMBER_TYPE">TYPE</label>
			<input type="text" name="MEMBER_TYPE" id="MEMBER_TYPE">
			</div>

			<div>
				<label for id="MEMBER_NAME">NAME</label>
			<input type="text" name="MEMBER_NAME" id="MEMBER_NAME">
			</div>

			<div>
				<label for id="PHONE_NO">CONTACT NO</label>
			<input type="text" name="PHONE_NO" id="PHONE_NO">
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

// Create connection
$conn = new mysqli($servername, $username ,'','library');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['submit'])){


$SSN = $_POST['SSN'];
$MEMBER_TYPE = $_POST['MEMBER_TYPE'];
$MEMBER_NAME = $_POST['MEMBER_NAME'];
$PHONE_NO = $_POST['PHONE_NO'];

$sql = "INSERT INTO MEMBER(SSN,MEMBER_TYPE,MEMBER_NAME,PHONE_NO)VALUES ('$SSN','$MEMBER_TYPE','$MEMBER_NAME','$PHONE_NO');";

if ($conn->query($sql) === TRUE) {
        echo "Member Info Added Successfully";
      } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            echo "Unable to add Member information !!!";
          }
}
?>
