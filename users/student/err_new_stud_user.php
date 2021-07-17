<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>User Portal</title>
  </head>
  <body>
      <a href="stud_user_index.html">back</a>
      <h1>WELCOME TO USER PORTAL</h1>
      <h2>Let us Get you registered</h2>
      <h3>Warning - You have Entered Something Wrong</h3 >
      <form action="insert_user.php" method="post">

        <label for="stud_number">Student Number:</label><br>
        <input type="text" id="stud_number" name="stud_number" value= <?php echo "\"". $_SESSION["stud_number"] . "\""?>>*
        <br><br>

        <label for="id_number">ID Number to which you are registered to te Institution:</label><br>
        <input type="text" id="id_number" name="id_number"  value= <?php echo "\"". $_SESSION["id_number_str"] . "\""?>>*
        <br><br>


        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"   value=  <?php echo "\"". $_SESSION["password_str"] . "\""?>  placeholder="New Password"><br><br>


        <label for="password2">Confirm Password:</label><br>
        <input type="password" id="password2" name="password2" value= <?php echo "\"". $_SESSION["password2_str"] . "\""?>   placeholder="Confirm Password"><br><br>


        <input type="submit" value="Submit">
      </form>

  </body>
</html>
