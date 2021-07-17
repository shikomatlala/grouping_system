<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>User Portal</title>
  </head>
  <body>
      <a href="stud_user_index.html">back</a>
      <h1>WELCOME TO USER PORTAL</h1>
      <h2>New User Created successfully</h2>
      <p>Your username is your student number:  <?php echo " '". $_SESSION["stud_number"] . "''"?> <br>Your password is then new password which you have created</p>
      <form action="login_stud_user.php" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br>

        <label for="username">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>

        <input type="submit" value="Submit"><br><br>
      </form>

  </body>
</html>
