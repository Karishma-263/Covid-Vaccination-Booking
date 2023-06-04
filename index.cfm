<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="nofollow" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>LOGIN</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
   
</head>
<body>
    <cfif isDefined("url.success") and url.success eq "register">
        <p style="color:green" >record added successfully</p>
    </cfif>
    
    <form action="action.cfm" class="form" method="post">
        <input type="hidden" name="camefrom" value="login">
        <h2>LOGIN</h2>
        <div class="Group">
            <label for="Email">Email</label>
            <input placeholder="abc@email.com" id="Email" type="email" required name="email">
        </div>
        <div class="Group">
            <label for="Password">Password</label>
            <input id="Password" type="password" required name="password">
        </div>
        <!--- <div class="Group"> --->
            <input type="submit" value="login" name="submit" class="button">
        <!--- </div> --->
        <div class="Group">
            <p class="signin">Don't have an account? <a href="registration.cfm">Signin</a></p>
        </div>
        
    </form>
</body>
</html>