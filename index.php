<?php
session_start();
$host="localhost"; // Host name
$username="root"; // Mysql username
$password="hz3v6x4k"; // Mysql password
$db_name="letsgo"; // Database name
mysql_connect("$host", "$username", "$password")or die("cannot connect");
mysql_select_db("$db_name")or die("cannot select DB");

$connect = FALSE;
if(isset($_SESSION['id']))
	$connect = TRUE;

if(isset($_POST['myusername'])){
	$myusername=$_POST['myusername'];
	$mypassword=$_POST['mypassword'];
	$myusername = mysql_real_escape_string($myusername);
	$mypassword = mysql_real_escape_string($mypassword);
	$sql="SELECT * FROM utilisateur WHERE username='$myusername' and password='$mypassword'";
	$result=mysql_query($sql);
	$count=mysql_num_rows($result);
	if($count==1){
		$connect = TRUE;
		$array = mysql_fetch_array($result);
		$_SESSION['id'] = $array['id'];
	}
	else {
		echo "Wrong Username or Password";
	}
}




?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="author" content="Let's Go team"/>
<meta name="robots" content="all"/>
<title>Je cherche un truc...</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
<link href="papaOurs.css" rel="stylesheet">
</head>
<body>
<div class="container col-lg-12">
<h1>Je cherche un truc...</h1>
<?php 
if($connect){
	echo "Bonjour monsieur id numero ".$_SESSION['id'];
}else{
	include "login.php";
}
$page = array(
		"login" => "login.php",
		"newThread" => "newThread.php",
		"reply" => "reply.php",
		"thread" => "thread.php"
	     );
if (isset($_GET['page'])) {
	if (isset($page[$_GET['page']])) {
		include $page[$_GET['page']];
	} else {
		include "accueil.php";
	}
} else {
	include "accueil.php";
}
?>

</div>



<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>
