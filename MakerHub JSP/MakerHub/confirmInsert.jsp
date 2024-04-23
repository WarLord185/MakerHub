<html>
  <head>
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
        <a href="homepage.jsp" class="icon-a"><i class="fa fa-user icons"></i>&nbsp;&nbsp;
        Logout</a>
    </div>
    <div id="main">
        <div class="head">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav">
                &#9776; Insert Space Notification</span>
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav2">
                &#9776; Insert Space Notification</span>
            </div>

            <div class="col-div-6">
                <div class="profile">
                <img src="images/test_pfp_2_50x50.png" class="pro-img">
                <p>Ryan Rajkumar <span>MECHANIC</span></p>
            </div>
            </div>
            <div class="clearfix"></div>
        </div>
        
    </div>

    <%@ page import="makerhub.*, java.util.ArrayList" %>
    <%

    
      String name = request.getParameter("sname");
      String address= request.getParameter("add");
      String Description= request.getParameter("desc");
      String category =request.getParameter("ct");
      String av =request.getParameter("av");
      String Price= request.getParameter("price");
      String Owner= request.getParameter("oi");
    

      Spaces m = new Spaces();

      int r =  m.insertSpace(name, address, Description, category, price, av,  Owner);                 
    %>
      
      <br> <br>
  
      <br> <br>  <br>  <br>   <br>

        <%
          if(r <= 0){
        %>
          <h2> class="col-div-3"> Insert UNSUCCESSFUL</h2>
          <div id="section2">
              Space not added!!
          </div>
        <%
          }
          else{
        %>

        <h2 class="col-div-3"> Insert SUCCESSFUL!! </h2>
        <div id="section2">
             The following has been added: <%= name %>
        </div>
      <%
          }
      %>
  </body>
</html>