<?php
session_start();
include ("connec.php");
$username = "";
$pw = "";
if (isset($_POST['submit']))
{
    if (isset($_POST["user"])) 
        $username = trim($_POST["user"]);
    if (isset($_POST["pw"])) 
        $pw = trim($_POST["pw"]);
        $pw = md5($pw);
    $check = "SELECT * from users WHERE username = '$username' and password = '$pw'";
    $result = mysqli_query($conn, $check);
    if (mysqli_num_rows($result) == 1)
    {

        $row = mysqli_fetch_array($result);

        $_SESSION['username'] = $row['username'];
        $_SESSION['role'] = $row['role'];
        setcookie("user", $_POST["user"], time()+60*60*24*30);

        if ($_SESSION['role'] == 'admin')
        {
            header("Location: ../update/admin.php");
        }

        
    }
    else
    {
        echo "<script>alert('Incorrect username or password found');</script>";
    }
    if (!empty($username) && !empty($pw) && (strcmp($username, strrev($pw)) == 0))
    {
        $_SESSION['username'] = $username;
        header('Location: ./lab8.php');
        exit;
    }
}
?>
<style>
* {
box-sizing: border-box;
}

*:focus {
	outline: none;
}
body {

background: url('../update/img/1.png') no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        background-size: cover;
        -o-background-size: cover;
}
.login {
margin: 20px auto;
width: 300px;
}
.login-screen {
background-color: #0000;
padding: 20px;
border-radius: 5px
}

.app-title {
text-align: center;
color: #777;
}

.login-form {
text-align: center;
}
.control-group {
margin-bottom: 10px;
}

input {
text-align: center;
background-color: #ECF0F1;
border: 2px solid transparent;
border-radius: 3px;
font-size: 16px;
font-weight: 200;
padding: 10px 0;
width: 250px;
transition: border .5s;
}

input:focus {
border: 2px solid #3498DB;
box-shadow: none;
}

.btn {
  border: 2px solid transparent;
  background: #3498DB;
  color: #ffffff;
  font-size: 16px;
  line-height: 25px;
  padding: 10px 0;
  text-decoration: none;
  text-shadow: none;
  border-radius: 3px;
  box-shadow: none;
  transition: 0.25s;
  display: block;
  width: 250px;
  margin: 0 auto;
}

.btn:hover {
  background-color: #2980B9;
}

.login-link {
  font-size: 12px;
  color: #444;
  display: block;
	margin-top: 12px;
}
</style>
<html>
<body>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<body>
	<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Login</h1>
			</div>

			<div class="login-form">
				<div class="control-group">
				<form action="<?=$_SERVER['PHP_SELF'] ?>" method="POST">
                Username: <input type="text" name="user" value="<?php if(!isset($_COOKIE["user"])) {
            echo $username;
        }else {
            echo $_COOKIE["user"];
        } ?>"> <br>
                Password: <input type="password" name="pw" value=""> <br/>
				</div>

				

				<input type="Submit" name="submit" value="Submit">
			</div>
		</div>
	</div>
</body>
</html>
