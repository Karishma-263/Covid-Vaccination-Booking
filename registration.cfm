<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <link rel="stylesheet" type="text/css" href="css/reg.css">

  

</head>
<body>
  <cfif isDefined("url.validation") and url.validation eq "password">
    <p style="color:red">Password and confirm password are not matched</p>
  </cfif>
  <div class="container">
    <h2>Registration Form</h2>
    <form name="registration_form" class="registration" method="post" action="action.cfm">
      <label for="firstName">First Name:</label>
      <input type="text" id="firstName" name="firstName" required>
      <input type="hidden" name="camefrom" value="registration">
      <input type="hidden" name="id" value="0">
      <label for="lastName">Last Name:</label>
      <input type="text" id="lastName" name="lastName" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>

      <label for="confirmpassword">Confirm Password:</label>
      <input type="password" id="password" name="confirmpassword" required>

      <label for="role">Role:</label>
      <div class="role-container">
        <input type="radio" id="user" name="role" value="user" required>
        <label for="user">User</label>
        <input type="radio" id="admin" name="role" value="admin" required>
        <label for="admin">Admin</label>
      </div>

      <label for="age">Age:</label>
      <input type="number" id="age" name="age" required>

      <label for="gender">Gender:</label>
      <div class="gender-container">
        <input type="radio" id="male" name="gender" value="male" required>
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="female" required>
        <label for="female">Female</label>
      </div>

      <label for="mobile">Mobile Number:</label>
      <input type="text" id="mobile" name="mobile" required maxlength="10">


      <label for="address">Address:</label>
      <textarea id="address" name="address" rows="4" required></textarea>

      <input type="submit" value="Register" name="submit">
      <p class="signin">Already have an account? <a href="index.cfm">Signin</a></p>
    </form>
  </div>
</body>
</html>
