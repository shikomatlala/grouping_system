<?php
  include "../../../connect.php";
  echo header_html("../../../style.css");
?>
    <a href="../../index.php">Back</a><br>
    <h1>WELCOME TO THE ADMIN PORTAL</h1>
    <h2>Sign In</h2>
    <form class="form_admin_portal" action="confirm_admin_user.php" method="post">
      <label for="username">Username:</label><br>
      <input type="text" id="username" name="username"><br>

      <label for="password">Password:</label><br>
      <input type="password" id="password" name="password"><br><br>

      <input class="submit_button" type="submit" value="Submit" name="submit"><br><br>
    </form>
    <a href="new_admin_user.html">Sign up?</a><br>
    <a href="../insert_admin/create_admin.php">Create Admin?</a><br>

  </body>
</html>
