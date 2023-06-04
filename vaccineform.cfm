<!DOCTYPE html>
<html>
<head>
  <title>Vaccination Form</title>
  <link rel="stylesheet" type="text/css" href="css/vaccidetails.css">
</head>
<body>
  <h2>Vaccination Form</h2>
  <div class="form-container">
    <form name="vaccineform" action="action.cfm" method="post">
      <label for="vaccinationName">Vaccination Name:</label>
      <input type="text" id="vaccinationName" name="vaccinationName" required>

      <label for="vaccinationcentre">Vaccination Center:</label>
      <input type="text" id="vaccinationCenter" name="vaccinationCenter" required>
      <input type="hidden" name="vaccineID" class="vaccineID" value="0">
      <input type="hidden" name="camefrom" value="vaccineform">
      <label for="dosage">Dosage:</label>
      <select id="dosage" name="dosage" required>
        <option value="">Select Dosage</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
      </select>

      <label for="city">City:</label>
      <input type="text" id="city" name="city" required>

      <label for="state">State:</label>
      <input type="text" id="state" name="state" required>

      <label for="pincode">Pincode:</label>
      <input type="text" id="pincode" name="pincode" pattern="[0-9]{6}" maxlength="6" required>

      <label for="address">Address:</label>
      <textarea id="address" name="address" rows="4" required></textarea>

      <input type="submit" value="Submit" name="submit">
    </form>
  </div>
</body>
</html>
