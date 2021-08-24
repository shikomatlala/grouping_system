<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>User Portal</title>
  </head>
  <body>
      <a href="admin_portal.html">back</a>
      <h1>WELCOME TO ADMIN PORTAL</h1>
      <h2>New User Created successfully</h2>
      <p>Your username is your staff number:  <?php echo " '". $_SESSION["staff_number"] . "'"?> <br>Your password is the new password which you have created</p>
      <form action="confirm_admin_user.php" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br>

        <label for="username">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>

        <input type="submit" value="Submit"><br><br>
      </form>

  </body>
</html>
