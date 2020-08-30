<?php
include_once 'database.php';
include 'instamojo/Instamojo.php';
$api = new Instamojo\Instamojo('test_9a5578c62e679b533d3e2791a1f', 'test_6291bcb7a482bedd12e4d2abb2e', 'https://test.instamojo.com/api/1.1/');
	 
if(isset($_POST['submit']))
{	 
    
	 $pName = $_POST['pName'];
	 $Name = $_POST['Name'];
	 $pEmail = $_POST['Email'];
	 $pPhone = $_POST['Phone'];
	 $pPrice = $_POST['pPrice'];
	 $pImage = $_POST['pImage'];
	 $sql = "INSERT INTO `product`(`Donation _Type`, `User_Name`, `User_Email`, `Phone_Number`, `Price`, `Image`) VALUES
	 ('$pName',' $Name',' $pEmail',' $pPhone','$pPrice','$pImage')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
		try {
    $response = $api->paymentRequestCreate(array(
        "purpose" => "Donate",
        "amount" =>   $pPrice,
        "send_email" => true,
		"email" => $pEmail,
		"buyer_name" => $Name,
		"phone" => $pPhone,
		"send_sms" => true,
		"allow_repeated_payments" => false,
       // "redirect_url" => "http://www.example.com/handle_redirect.php"
		//"webhook" => "http://www.example.com/handle_redirect.php"
        ));
   // print_r($response);
	
	  $pay_url=$response['longurl'];
	  header("location: $pay_url");
    }
    catch (Exception $e) {
    print('Error: ' . $e->getMessage());
    } 
	 } else {
		 
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>