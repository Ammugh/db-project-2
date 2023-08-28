<!DOCTYPE html>
<html lang="en">
<head>
	<title>BORROW BOOK</title>
	</head>
	<body>
		<header>
			<h1>BORROW BOOK</h1>
			<h3>For borrowing a book, please enter the below details : </h3>
		</header>
		<form method="POST">
			<div>
			<label for id="MEM_SSN">SSN</label>
			<input type="text" name="MEM_SSN" id="MEM_SSN">
			</div>

			<div>
				<label for id="TITLE">TITLE</label>
			<input type="text" name="TITLE" id="TITLE">				
			</div>

			<div>
				<label for id="LEND_DATE">DATE OF BOOK ISSUE</label>
			<input type="date" name="LEND_DATE" id="LEND_DATE">				
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


$MEM_SSN = $_POST['MEM_SSN'];
$TITLE = $_POST['TITLE'];
$LEND_DATE = $_POST['LEND_DATE'];
$CHECKOUT_DATE = date('Y-m-d', strtotime($CHECKOUT_DATE. ' + 21 days'));


 $sql1 = "SELECT * FROM MEMBER WHERE SSN = '$MEM_SSN'";
  $result = $conn->query($sql1);

if ($result->num_rows > 0) {

	$sql = "INSERT INTO LEND_STATUS(TITLE,LEND_DATE,CHECKOUT_DATE,MEM_SSN)VALUES ('$TITLE','$LEND_DATE','$CHECKOUT_DATE','$MEM_SSN')";
	$sql1 = "INSERT INTO RETURN_STATUS(TITLE,LEND_DATE,CHECKOUT_DATE,MEM_SSN)VALUES ('$TITLE','$LEND_DATE','$CHECKOUT_DATE','$MEM_SSN')";
$sql_book_renew = "SELECT CHECKOUT_DATE from RETURN_STATUS where MEM_SSN = 'MEM_SSN' and CHECKOUT_DATE < CURRENT_DATE";
       $result_book = $conn->query($sql_book_renew);

      	$sql_member_renew = "SELECT EXPIRE_DATE from MEMBERSHIP where MEM_SSN = '$MEM_SSN' and EXPIRE_DATE < CURRENT_DATE";
      	       $result_member = $conn->query($sql_member_renew);


	  if ($conn->query($sql) === TRUE) {
       echo "Borrowal Info Added Successfully";
      } 

       elseif ($conn->query($sql1) === TRUE) {
        echo "Borrowal Info Added Successfully";
      }       	

      	elseif ($result_book->num_rows > 0) {

            echo " Kindly return to borrow a new book because you have an outstanding overdue book.";
        }

        elseif ($result_member->num_rows > 0) {

        	echo "Kindly renew your membership to borrow a new book because your membership has expired.";

        }

        else{
	echo"lol";
	}
     
	
}
	else
	{
		echo "member does not exist";
	}

}




?> 
