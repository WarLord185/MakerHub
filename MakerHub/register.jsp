<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MakerHub</title>
    <link rel="stylesheet" href="./register.css">
  
</head>
<body  style="overflow: scroll; height : 90%"; max-height:500px>

 
    <div class = "blob-background">
        <svg width="585" height="475" viewBox="0 0 585 475" fill="none" xmlns="http://www.w3.org/2000/svg">
        <style>
          @keyframes colorChange1 {
            0%, 100% { fill: var(--color1); }
            50% { fill: var(--color2); }
          }
      
          path {
            animation: colorChange1 8s infinite linear;
          }
        </style>
        <path d="M59.6878 70.4072C2.64247 112.7 -16.8108 220.14 15.7866 303.15C34.714 338.439 85.6079 417.473 137.764 451.308C202.958 493.601 346.492 482.305 380.666 392.728C414.841 303.151 608.848 251.138 582.56 142.122C556.271 33.1053 429.562 31.2664 323.621 6.83623C217.68 -17.5939 116.733 28.1141 59.6878 70.4072Z" fill="#B071FF"/>
        </svg>
    </div>
      <section>
        <form action="success.jsp" method="post">
        <div class="form-box">
          
            <div class="form-value">
               
                    <h2>Register</h2>
                    
                    <div class="inputbox">
                        
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="email" required>
                        <label for="">Email</label>
                       
                    </div>
                    <br><br>
                   
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" required>
                        <label for="">Password</label>
                       
                    </div>
                    <br><br>
                    <div class="inputbox">
                          <input type="text" name="name" required>
                          <label for="">Name</label>
                      </div>
                      <br><br>
                      <div class="inputbox">
                          <input type="text" name="add" required>
                          <label for="">Address</label>
                      </div>
                      <br><br>
                      <div class="inputbox">
                          <input type="tel" name="tel" required>
                          <label for="">Tel number</label>
                      </div>
                      <br><br>
                      <div class="inputbox">
                          <input type="date" name="DOB" required>
                          <label for="">Date of Birth</label>
                      </div>
                      <div class="inputbox">
                          <select name="accountType" required>
                              <option value="Owner">Owner</option>
                              <option value="Renter">Renter</option>
                          </select>
                          <label for="">Account Type</label>
                      </div>
                      <br><br>
                      <form action="success.jsp" method="post">
                          <button type="submit">Register now</button>
                      </form>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>