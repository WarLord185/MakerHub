<!DOCTYPE html>
<html lang="en">
<head>
  <style>
header {
    background-color: #4e4e4e;
    color: #fff;
    padding: 30px;
    margin: 0px;
}

body {
    margin: 0px;
    background-color: #2e3a42;
    font-family: "Poppins", sans-serif;
    color: #e6e6ea;
    background-color: #34424b;
}


.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.brand h1 {
    margin: 0;
}

.menu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex; 
}

.menu ul li {
    margin-right: 20px;
}

.user-links {
    display: flex; 
}

.user-links a {
    color: #fff;
    text-decoration: none;
    margin-left: 20px;
}

.form-box {
    width: 1000px;
    height: relative;
    border-radius: 10px;
    position: relative;
    margin: 6% auto;
    background:rgba(0, 0, 0, 0.65);
    padding: 5px;
    }

    h3{
      font-size:60px;
      font-weight:90px;
text-align: center;
text-shadow: 0px 18px 15px #000;
    }

    h2 {
      font-size: 50px;
      font-weight: 70px;
      letter-spacing: 1.5px;
      text-decoration-color:white;
     
   
    }

    article h1:after {
      content: "";
      height: 5px;
      width: 255px;
      background-color: #fff;
      display: block;
      margin: auto;
    }

    h2{
      padding: left 100px;
      text-align: center;
      font-size: 50px;
    }
    
    h4{
      text-align: center;
    }

    para{
      font-size:20px;
    }

    p{
      font-size:20px ;
      text-align: center;
    }

    .form-box2 {
    width: 100%;
    height: 330px;
    border-radius: 10px;
    position: relative;
    margin: 6% auto;
    background:rgba(0, 0, 0, 0.65);
    padding: 5px;
    }

////////////////////////////////////////////////////////////

footer {
    background-color: #141414;
    padding: 20px;
    color: #e6e6ea;
    z-index: 1;
}
.container {
    max-width: 960px;
    margin: auto;
}
.row {
    display: flex;
    flex-wrap: wrap;
}
.col-md-3, .col-md-6 {
    flex: 1;
    margin: 10px;
}
h5 {
    margin-top: 0;
}
ul {
    list-style-type: none;
    padding: 0;
}
a {
    color: #e6e6ea;
    text-decoration: none;
}
.text-center {
    text-align: center;
}

.feat-container {
    margin-top: 10px;
    margin-bottom: 10px;
}

.feat-head {
    font-size: 140%;
    line-height: normal;
    margin: 20px;
}

.feat-grid-container {
    display: grid;
    grid-template-columns: auto auto auto;
    margin: 20PX;
    gap: 2rem;
}

.feat-card {
    text-align: center;
    font-size: 30px;
    border-radius: 25px;
    background-color: hsla(0, 8.7%, 91%, 0.02);
    z-index:1;
}


    </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us</title>
  
  </head>
<body  style="overflow: scroll; height : 90%"; max-height:500px></body>
  <header>
    <div class="header-container">
        <div class="brand">
            <h1>MakerHub</h1>
        </div>
        <nav class="menu">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Bookings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
            </ul>
        </nav>
        <div class="user-links">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Sign Up</a>
        </div>
    </div>
</header>

  <body background="banner-image.jpg"></body>
  <h3>About Us</h3>
<div class="form-box">
  <h2>Who Are We?</h2>

  <p>We are a team passionate about creating a new standard for workspace flexibility. 
    <br>We believe everyone deserves access to a productive and inspiring work environment, regardless of their work style or location.
  <br>Founded in 2001, Makehub is a platform that connects professionals with a network of high-quality, on-demand workspaces.
  <br> From private offices to collaborative meeting rooms, we offer a diverse range of options, all conveniently located and equipped to meet your needs.</p>
  </div>
</div>


<footer>
  <div class="form-box2">
  <div class="container">
      <div class="row">
          <div class="col-md-3">
              <h5>Our mission</h5>
              Our mission at makerhub is to create a safe space for all people to come together, interact and share reasources and ideas about projects big and small.<br>
    At makerhub we just want to encourage creativity and productivity. 
          </div>
          <div class="col-md-3">
              <h5>Contact Us</h5>
              <p>Email: support@makerhub.com</p>
              <p>Phone: +1 234 567 890</p>
          </div>
        
      </div>
      <div class="row">
          <div class="col-md-12">
              <p class="text-center">© 2024 MakerHub. All rights reserved.</p>
          </div>
      </div>
  </div>
  </div>
</footer>
  


 
  
</html>