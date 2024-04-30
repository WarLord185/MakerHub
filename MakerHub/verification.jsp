<html>
  <head>
    <link rel="stylesheet" href="./dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        function unsuccessfulPopup() {
            alert("Login Failed");
        }
    </script>
</head>
<body>
    <div id="sideNav" class="sideNav">
        <p class="logo"><span>Maker</span>Hub </p>
        <a href="OwnerDashboard.jsp" class="icon-a"><i class="fa fa-dashboard icons"></i>&nbsp;&nbsp;
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
                &#9776; Bookings</span>
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav2">
                &#9776; Bookings</span>
            </div>

            <div class="col-div-6">
                <div class="profile">
                <img src="images/test_pfp_2_50x50.png" class="pro-img">
                <p>Ryan Rajkumar <span>MECHANIC</span></p>
            </div>
            </div>
            <div class="clearfix"></div>
        </div>
    <%@ page import="makerhub.*"%>
  
    <%@ page import="java.util.ArrayList"%>
    <%
    
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String spaceid = request.getParameter("spaceid"); 
    LoginCheck loginCheck = new LoginCheck();
    boolean isValidLogin = loginCheck.checkOwner(username);
   
    if (isValidLogin) {
        session.setAttribute("Username", username);

        Spaces m = new Spaces();
ArrayList<ManageBooking> ans= m.getAllBookings();

for(int i=0;  i<ans.size(); i++){
ManageBooking b= ans.get(i);


%>
<section class="tableBody">
    <table>            
        <tr>
            <th>ID</th>
            <th>Renter ID</th>
            <th>Space ID</th>
            <th>Booking Date</th>
            <th>Check In</th>
            <th>Check Out</th>
            <th>Status</th>
        </tr>
        
        
        <tr>
            <td> <%= b.booking_ID %> </td>
            <td> <%= b.renter_ID %> </td>
            <td> <%= b.space_ID %></td>
            <td> <%= b.bookingDate %></td>
            <td><%= b.startTime %> </td>
            <td><%= b.endTime %> </td>
            <td> Booked </td>
        </tr>
        </table>
        </section>


   


        <%
}


        
    }
     else {
        out.println("<script type=\"text/javascript\">");
        out.println("unsuccessfulPopup();");
        out.println("</script>");
    }
%>
</body>
</html>