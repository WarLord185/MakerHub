<%@ page import="makerhub.Spaces" %>
<%@ page import="makerhub.ManageSpaces" %>
<%@ page import="makerhub.ManagePicture" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MakerHub</title>
    <link rel="stylesheet" href="browse.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src=""></script>
</head>
<body>
<header>
    <div class="header-container">
        <div class="header-logo">
            <a href="#"> </a>
            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
            viewBox="0 0 520 593" style="enable-background:new 0 0 520 593;" xml:space="preserve">
            <style type="text/css">
            .st0{fill:#F2F2F2;}
            .st1{fill-rule:evenodd;clip-rule:evenodd;fill:#F2F2F2;}
            </style>
            <g>
            <g>
                <path class="st0" d="M310.8,282.1c0,5.5-4.5,10-10,10c-5.5,0-10-4.5-10-10c0-5.5,4.5-10,10-10
                    C306.3,272.1,310.8,276.6,310.8,282.1z"/>
            </g>
            <path class="st1" d="M247.3,3.3c7.7-4.5,17.3-4.5,25,0l234.8,135.6c7.7,4.5,12.5,12.7,12.5,21.6v271.1c0,8.9-4.8,17.2-12.5,21.6
                L272.3,588.9c-7.7,4.5-17.3,4.5-25,0L12.5,453.3C4.8,448.9,0,440.6,0,431.7V160.6c0-8.9,4.8-17.2,12.5-21.6L247.3,3.3z M254.8,74
                l-185,106.7c-3.1,1.8-5,5.1-5,8.7v188.7c2.3,33.5,51.5,33.5,54,0V221.4c0-3.6,1.9-6.9,5-8.6L254.3,137c3.1-1.8,6.9-1.8,10,0
                l130.5,75.5c3.1,1.8,5,5.1,5,8.7v157c4.1,33.8,54.1,34,55,0V189.4c0-3.6-1.9-6.9-5-8.7L264.8,74C261.7,72.2,257.9,72.2,254.8,74z
                M205.8,430.9c0-2,0.1-3.9,0.3-5.8h107.4c0.2,1.9,0.3,3.8,0.3,5.8c0,5.6-0.9,11.1-2.5,16.2H208.3
                C206.7,442,205.8,436.6,205.8,430.9z M213.7,459.1c9.5,15.5,26.6,25.8,46.1,25.8c19.5,0,36.6-10.3,46.1-25.8H213.7z M312.4,413.1
                c-0.4-18.9,4.4-45.7,14.6-57.2c14.2-15.9,22.8-36.9,22.8-59.8c0-49.7-40.3-90-90-90c-49.7,0-90,40.3-90,90c0,23,8.6,43.9,22.8,59.8
                c10.2,11.5,15,38.3,14.6,57.2h32.6v-100h40v100H312.4z M269.8,413.1v-56.8c-2.7,2.4-6.2,3.8-10,3.8c-3.8,0-7.3-1.4-10-3.8v56.8
                H269.8z"/>
            </g>
            </svg>
        </div>
        <div class="brand">
            <h1><a href="#">MakerHub</a></h1>
        </div>
        <nav class="menu">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Bookings</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <div class="user-links">
            <a href="#">Login</a>
            <a href="#">Sign Up</a>
        </div>
    </div>
</header>

    <div class="card-container">
        <%
            Spaces spacesObj = new Spaces();
            ArrayList<ManageSpaces> spaces = spacesObj.getAllSpaces();

            for (ManageSpaces space : spaces) {
                String type = space.getType();
                String title = space.getSpaceName();
                String description = space.getDescription();
                double price = space.getPrice();
                // String image = "images/1.jpg"; // Replace with your default image or add an image field in your ManageSpaces class
                ManagePicture picture = spacesObj.getPictureForSpace(space.getSpaceID());
                String image = picture != null ? "images/" + picture.getPicUrl() : "images/your-default-image.jpg";
        %>
        <div class="product-card">
            <div class="product-tumb">
                <img src="<%=image%>" alt="">
            </div>
            <div class="product-details">
                <span class="product-catagory"><%=type%></span>
                <h4><a href=""><%=title%></a></h4>
                <p><%=description%></p>
                <div class="product-bottom-details">
                    <div class="product-price">$<%=price%> /hr</div>
                    <div class="product-links">
                        <a href=""><i class="fa fa-heart"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h5>Quick Links</h5>
                <ul>
                    <li><a href="#">View Spaces</a></li>
                    <li><a href="#">Book a Space</a></li>
                    <li><a href="#">List Your Space</a></li>
                    <li><a href="#">Manage Bookings</a></li>
                </ul>
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
</footer>
</body>
</html>