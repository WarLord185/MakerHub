<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Test Background</title>
  <link rel="stylesheet" href="./loginV2.css">

</head>
<body>
  <div class = "blur-background">
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev/svgjs" width="1920" height="1080" preserveAspectRatio="none" viewBox="0 0 1920 1080">
      <g mask="url(&quot;#SvgjsMask1026&quot;)" fill="none">
          <rect width="1920" height="1080" x="0" y="0" fill="rgba(22, 86, 80, 1)"></rect>
          <path d="M 0,183 C 76.8,212.4 230.4,323.8 384,330 C 537.6,336.2 614.4,214.2 768,214 C 921.6,213.8 998.4,360 1152,329 C 1305.6,298 1382.4,65.2 1536,59 C 1689.6,52.8 1843.2,250.2 1920,298L1920 1080L0 1080z" fill="rgba(59, 57, 102, 1)"></path>
          <path d="M 0,1063 C 128,994.6 384,730.2 640,721 C 896,711.8 1024,1031.6 1280,1017 C 1536,1002.4 1792,721.8 1920,648L1920 1080L0 1080z" fill="rgba(58, 49, 216, 1)"></path>
      </g>
      <defs>
          <mask id="SvgjsMask1026">
              <rect width="1920" height="1080" fill="#ffffff"></rect>
          </mask>
      </defs>
    </svg>
  </div>
<section>
  <div class="form-box">
      <div class="form-value">
          <form action="">
              <h2>Login</h2>
              <div class="inputbox">
                  <ion-icon name="mail-outline"></ion-icon>
                  <input type="email" required>
                  <label for="">Email</label>
              </div>
              <div class="inputbox">
                  <ion-icon name="lock-closed-outline"></ion-icon>
                  <input type="password" required>
                  <label for="">Password</label>
              </div>
              <div class="forget">
                  <label for=""><input type="checkbox">Remember Me</label>
                  <label for=""><a href="#">Forgot Password?</a></label> 
              </div>
              <button>Log in</button>
              <div class="register">
                  <p>Don't have an account? <label for=""><a href="#">Register</a></p></label>
              </div>
          </form>
      </div>
  </div>
</section>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  
</body>
</html>
