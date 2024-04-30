<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MakerHub</title>
    <link rel="stylesheet" href="./MakerHubLogin.css">
    <script src=""></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="icon" type="image/x-icon" href="images/MakerHub_Logo_Small200.svg">
    <script>
    function unsuccessfulPopup() {
    alert("Login Failed");
    }
    </script>
</head> 


<body>
    <section>
        <div class="form-box">
            <div class="form-value">
                <form action="LoginSuccess.jsp" method="post">
                    <h2>Login</h2>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="text" name="username" required>
                        <label for="">Username</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="password" required>
                        <label for="">Password</label>
                    </div>
                    <div class="forget">
                        <label for=""><input type="checkbox">Remember Me</label>
                        <label for=""><a href="#">Forgot Password?</a></label> 
                    </div>
                    <button type="submit">Log in</button>
                    <div class="register">
                        <p>Don't have an account? <label for=""><a href="MakerHubRegister.jsp">Register</a></p></label>
                    </div>
                </form>
            </div>
        </div>
    </section>
 <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html> 
