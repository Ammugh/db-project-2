<!DOCTYPE html>
<html lang="en">
<head>
	<title>ADD NEW BOOKS</title>
	</head>
	<body>
		<header>
			<h1>BOOKS</h1>
			<h3>Details needed to add new book : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="ISBN">ISBN</label>
			<input type="text" name="ISBN" id="ISBN">
			</div>

			<div>
				<label for id="AUTHOR">AUTHOR</label>
			<input type="text" name="AUTHOR" id="AUTHOR">
			</div>

			<div>
				<label for id="BOOK_TITLE">TITLE</label>
			<input type="text" name="BOOK_TITLE" id="BOOK_TITLE">
			</div>

			<div>
				<label for id="SUB_AREA">SUBJECT AREA</label>
			<input type="text" name="SUB_AREA" id="SUB_AREA">
			</div>

			<div>
				<label for id="NUM_OF_COPIES">NUMBER OF COPIES</label>
			<input type="text" name="NUM_OF_COPIES" id="NUM_OF_COPIES">
			</div>

			<div>
				<label for id="BOOK_DESC">BOOK DESCRIPTION</label>
			<input type="text" name="BOOK_DESC" id="BOOK_DESC" maxlength="256">
			</div>

			<div>
                <label for id="STAFF_IDNO">STAFF ID</label>
            <input type="text" name="STAFF_IDNO" id="STAFF_IDNO">
            </div>

            <div>
                <label for id="PUBLISHER_ID">PUBLISHER ID</label>
            <input type="text" name="PUBLISHER_ID" id="PUBLISHER_ID">
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


$ISBN = $_POST['ISBN'];
$AUTHOR = $_POST['AUTHOR'];
$BOOK_TITLE = $_POST['BOOK_TITLE'];
$SUB_AREA = $_POST['SUB_AREA'];
$NUM_OF_COPIES = $_POST['NUM_OF_COPIES'];
$BOOK_DESC = $_POST['BOOK_DESC'];
$STAFF_IDNO = $_POST['STAFF_IDNO'];
$PUBLISHER_ID = $_POST['PUBLISHER_ID'];

$sql = "INSERT INTO BOOKS(ISBN,AUTHOR,BOOK_TITLE,SUB_AREA,NUM_OF_COPIES,BOOK_DESC,STAFF_IDNO,PUBLISHER_ID)VALUES ('$ISBN','$AUTHOR','$BOOK_TITLE','$SUB_AREA','$NUM_OF_COPIES','$BOOK_DESC','$STAFF_IDNO','$PUBLISHER_ID');";

if ($conn->query($sql) === TRUE) {
        echo "Books Info Added Successfully";
      } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            echo "Unable to add Member information !!!";
          }
}
?>