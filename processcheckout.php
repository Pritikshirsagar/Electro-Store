<?php
session_start();
include'connection.php';
$sql="select * from tbl_cart";
$result=$con->query($sql);
		if ($result->num_rows > 0) 
		{
			while($row = $result->fetch_assoc()) 
			{
				$uid=$row['user_id'];
				$uname=$row['username'];
				$pid=$row['product_id'];
				$pname=$row['product_name'];
				$img=$row['img'];
				$price=$row['price'];
				$qty=$row['quantity'];
				$total=$row['total'];
				
			}
		}
						

 $date=date('d/m/y');
 $name=$_POST['name'];
 $number=$_POST['number'];
 $landmark=$_POST['landmark'];
 $city=$_POST['city'];
 $op=$_POST['1option'];
 
 $val_name = "/^[A-Z][a-zA-Z ]+$/";
   $val_number = "/^[0-9]+$/";
    $val_city = "/^[a-z][a-zA-Z ]+$/";
	
 if(empty($name)||empty($number)||empty($landmark)||empty($city)||empty($op))
 {
	 echo "<script>alert('Please Fill Up Shipping Details');</script>";
	 	echo "<script>	window.location.href='checkout.php';</script>";	
 }

 else
 {
	 if(!preg_match($val_name,$name))
				{
					echo "<script> alert('First Letter must be capital eg.John ..!')</script>";
					echo "<script>window.location.href='checkout.php'</script>";
				}
	if(!preg_match($val_city,$city))
				{
					echo "<script> alert('Enter Only Alphabets !')</script>";
					echo "<script>window.location.href='checkout.php'</script>";
				}
	if(!preg_match($val_number,$number))
				{
					echo "<script> alert('This mobile number is incorrect..!.!')</script>";
					echo "<script>window.location.href='checkout.php'</script>";
				}
	if(!(strlen($number) == 10)){
					echo "<script> alert('Mobile number must be 10 digit')</script>";
					echo "<script>window.location.href='checkout.php'</script>";
				}

				
	$add_to_order_query="insert into tbl_shipping(ship_name,landmark,mobile_no,city,add_type,date) values ('$name','$landmark','$number','$city','$op','$date')";
    $add_to_order_result=mysqli_query($con,$add_to_order_query) or die(mysqli_error($con));
	//echo "<script>alert('Product add into Cart')</script>";
	if(!$add_to_order_result)
	{
		echo "<script>alert('Shipping Details')</script>";
	//echo "<script>	window.location.href='checkout.php';</script>";
	//echo $add_to_order_query;
	}
	echo "<script>	window.location.href='payment.php';</script>"; 
 }

	


?>