<?php 
	session_start();
	include 'connection.php';
	if(isset($_POST['submit']))
	{
		
		$name=$_POST['name'];
		$E_ID=$_POST['email'];
		$msg=$_POST['message'];
		//echo $name;
		$sql="insert into tbl_contact(name,email,message) values('$name','$E_ID','$msg')";
		//echo $sql."<br>";
		if(mysqli_query($con, $sql))
					{
						echo "<script>alert('Successfully   Added!')</script>";
						
						echo "<script>window.location.href='contact.php'</script>";
					}
					else
					{
						echo "<script>alert('An error occured while uploading the entry to database. Please try again later.')</script>";
							echo" Error:".$con->error;
					}

		
	}
?>