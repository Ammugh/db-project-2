<!DOCTYPE html>
<html lang="en">
<head>
	<title>RETURN BOOK</title>
	</head>
	<body>
		<header>
			<h1>RETURN BOOK</h1>
			<h3>To return a book, please enter the below details  : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="MEM_SSN">SSN</label>
			<input type="text" name="MEM_SSN" id="MEM_SSN">
			</div>

			<div>
				<label for id="BOOK_TITLE">TITLE</label>
			<input type="text" name="BOOK_TITLE" id="BOOK_TITLE">
			</div>

			<div>
				<label for id="RETURN_DATE">DATE OF BOOK RETURN</label>
			<input type="date" name="RETURN_DATE" id="RETURN_DATE">
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
$TITLE = $_POST['TITLE'];
//$BOOK_TITLE = $_POST['BOOK_TITLE'];
$RETURN_DATE = $_POST['RETURN_DATE'];


 $sql1 = "SELECT * FROM MEMBER WHERE SSN = '$MEM_SSN'";
  $result = $conn->query($sql1);

if ($result->num_rows > 0) {

	//$sql = "SELECT * FROM RETURN_STATUS, BOOKS WHERE RETURN_STATUS.MEM_SSN= '$MEM_SSN' AND RETURN_STATUS.TITLE = '$TITLE' AND RETURN_STATUS.TITLE = BOOKS.BOOK_TITLE";
    $sql = "SELECT * FROM BOOKS, RETURN_STATUS WHERE RETURN_STATUS.TITLE = BOOKS.BOOK_TITLE AND RETURN_STATUS.MEM_SSN= '$MEM_SSN'";
   //$sql = "SELECT BOOK_TITLE,BOOK_DESC,AUTHOR,CHECKOUT_DATE FROM BOOKS, RETURN_STATUS WHERE RETURN_STATUS.TITLE = BOOKS.BOOK_TITLE";
   //$sql = "SELECT * FROM BOOKS, RETURN_STATUS";
	$output = $conn->query($sql);


	  if ($output->num_rows > 0) {


	  	  while($row = $output->fetch_assoc()) {

      $MEM_SSN = $row["MEM_SSN"];
      $TITLE = $row["TITLE"];
      $LEND_DATE = $row["LEND_DATE"];
      $ISBN = $row["ISBN"];
      $AUTHOR = $row["AUTHOR"];
      $SUB_AREA = $row["SUB_AREA"];
      $NUM_OF_COPIES = $row["NUM_OF_COPIES"];
      $BOOK_DESC = $row['BOOK_DESC'];


      ?>

      <!DOCTYPE html>
        <html lang="en">

	<body>
		<header>
			<h1>RETURN RECEIPT</h1>
			<h3>Details for your Return receipt are here : </h3>
		</header>

	  	<form method="POST">
			<div>
				<label for id="ISBN">ISBN</label>
				<input type="text" name="ISBN" id="ISBN" value="<?php echo $ISBN;?>">
			</div>
			<div>
				<label for id="AUTHOR">AUTHOR</label>
				<input type="text" name="AUTHOR" id="AUTHOR" value="<?php echo $AUTHOR;?>">
			</div>
			<div>
				<label for id="TITLE">TITLE</label>
				<input type="text" name="TITLE" id="TITLE" value="<?php echo $TITLE;?>">
			</div>
			<div>
				<label for id="SUB_AREA">SUBJECT AREA</label>
				<input type="text" name="SUB_AREA" id="SUB_AREA" value="<?php echo $SUB_AREA;?>">
			</div>
			<div>
				<label for id="NUM_OF_COPIES">No Of Copies</label>
				<input type="text" name="NUM_OF_COPIES" id="NUM_OF_COPIES" value="<?php echo $NUM_OF_COPIES;?>">
			</div>
			<div>
				<label for id="BOOK_DESC">BOOK DESCRIPTION :</label>
				<!--input type="text" name="descr" id="descr" maxlength="1024" value="<?php echo $BOOK_DESC;?>"-->
				 <p><?php echo $BOOK_DESC;?></p>
			</div>
			<div>
				<label for id="LEND_DATE">ISSUE DATE</label>
				<input type="text" name="LEND_DATE" id="LEND_DATE" value="<?php echo $LEND_DATE;?>">
			</div>
			<div>
				<label for id="RETURN_DATE">RETURN DATE</label>
				<input type="text" name="RETURN_DATE" id="RETURN_DATE" value="<?php echo $RETURN_DATE;?>">
			</div>
































<?php
    }
} else {
 echo "0 results";
}
}
else{
	echo "Member does not exist.";
}
}
