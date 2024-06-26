<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div id="sideNav" class="sideNav">
        <p class="logo"><span>Maker</span>Hub </p>
        <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i>&nbsp;&nbsp;
        Dashboard</a>
        <a href="MySpaces.jsp" class="icon-a"><i class="fa fa-archive icons"></i>&nbsp;&nbsp;
        My Spaces</a>
        <a href="insertspace.jsp" class="icon-a"><i class="fa fa-plus-circle icons"></i>&nbsp;&nbsp;
        Insert Spaces</a>
        <a href="Booking.jsp" class="icon-a"><i class="fa fa-calendar icons"></i>&nbsp;&nbsp;
        Bookings</a>
        <a href="MakerHubLogout.jsp" class="icon-a"><i class="fa fa-user icons"></i>&nbsp;&nbsp;
        Logout</a>
    </div>

    <div id="main">
        <div class="head">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav">
                &#9776; Dashboard</span>
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav2">
                &#9776; Dashboard</span>
            </div>
<%
String un= (String)session.getAttribute("username");

if(un==null){
    try{
response.sendRedirect("http://localhost:8080/Makerhub/MakerHubLogin.jsp");
    }
    catch(Exception e){
        out.println("Redirecting error:" + e.getMessage());
    }
}

%>
            <div class="col-div-6">
                <div class="profile">
                <img src="images/test_pfp_2_50x50.png" class="pro-img">
                <p><%= un%> <span>Space owner</span></p>
            </div>
            </div>
            <div class="clearfix"></div>
        </div>
        
        <div class="col-div-3">
            <div class="box">
                <p>2<br/><span>Spaces</span></p>
            </div>
        </div>

        <div class="col-div-3">
            <div class="box">
                <p>4<br/><span>Bookings</span></p>
            </div>
        </div>

        <div class="clearfix"></div>
        <br/><br/>
    </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>