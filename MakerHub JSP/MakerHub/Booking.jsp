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
        <a href="OwnerDashboard.jsp" class="icon-a"><i class="fa fa-dashboard icons"></i>&nbsp;&nbsp;
        Dashboard</a>
        <a href="MySpaces.jsp" class="icon-a"><i class="fa fa-archive icons"></i>&nbsp;&nbsp;
        My Spaces</a>
        <a href="insertspace.jsp" class="icon-a"><i class="fa fa-plus-circle icons"></i>&nbsp;&nbsp;
        Insert Spaces</a>
        <a href="#" class="icon-a"><i class="fa fa-calendar icons"></i>&nbsp;&nbsp;
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


        <section class="tableBody">
            <table>            
                <tr>
                    <th>ID</th>
                    <th>Renter</th>
                    <th>Space ID</th>
                    <th>Booking Date</th>
                    <th>Check In</th>
                    <th>Check Out</th>
                    <th>Status</th>
                </tr>
                
                
                <tr>
                    <td> 1 </td>
                    <td> Christian Bale </td>
                    <td> 3453 </td>
                    <td> April 5th 2024</td>
                    <td> 9:00 am </td>
                    <td>5:00 pm </td>
                    <td> Booked </td>
                </tr>

                <tr>
                    <td> 2 </td>
                    <td> Mika Johnson </td>
                    <td> 3513 </td>
                    <td> March 20th 2024</td>
                    <td> 9:00 am </td>
                    <td>5:00 pm </td>
                    <td> Booked </td>
                </tr>

                <tr>
                    <td> 3 </td>
                    <td> Jack Brewer </td>
                    <td> 3454 </td>
                    <td> April 6th 2024</td>
                    <td> 9:00 am </td>
                    <td>5:00 pm </td>
                    <td> Booked </td>
                </tr>

                <tr>
                    <td> 4 </td>
                    <td> Matthew Mahem </td>
                    <td> 3453 </td>
                    <td> April 10th 2024</td>
                    <td> 9:00 am </td>
                    <td>5:00 pm </td>
                    <td> Booked </td>
                </tr>
                
            </table>
        </section>

    </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>
