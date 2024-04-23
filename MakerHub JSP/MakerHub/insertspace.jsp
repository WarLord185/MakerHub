<html>
  <head>
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  
  <%@ page import=" makerhub.*, java.util.ArrayList" %> 
  <%
  Spaces m = new Spaces();
    ArrayList<Category> cs = m.getCategories();         
  %>

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
                &#9776; Insert Space</span>
                <span style="font-size: 30px; cursor: pointer;color: white;" class="nav2">
                &#9776; Insert Space</span>
            </div>

            <div class="col-div-6">
                <div class="profile">
                <img src="images/test_pfp_2_50x50.png" class="pro-img">
                <p>Ryan Rajkumar <span>MECHANIC</span></p>
            </div>
            </div>
            <div class="clearfix"></div>
        </div>
    
    


    <form  action="confirmInsert.jsp" method="post">
    <table border="0" width="70%" align="center" cellpadding="10">
      <tr>
          <td class="col1"> Space Name:  </td>
          <td> <input type="text"  name="sname" required />  </td>
      </tr>

      <tr>
        <td class="col1"> Address:</td>
        <td><input type="text" name="add" required></td>
        </tr>

        <tr>
          <td class="col1"> Description:</td>
          <td><input type="text" name="desc" required></td>
          </tr>
      <tr>
          <td class="col1"> Type:  </td>
          <td>
            <select name="ct" required >
              <%
                for(int i=0; i<cs.size(); i++ ){   
                  Category c = cs.get(i);            
              %>
             
                <option value="<%= c.id %>" > <%= c.name %> </option>
              <%
                 } 
              %>
            </select>

          </td>
      </tr>

      <tr>
        <td class="col1"> availability:  </td>
        <td> <input type="text"  name="av" required />  </td>
    </tr>


      <tr>
          <td class="col1"> Price:  </td>
          <td> <input type="text"  name="price" required />  </td>
      </tr>

      <tr>
        <td class="col1"> Owner's ID:  </td>
        <td> <input type="text"  name="oi" required />  </td>
    </tr>


          <td>   </td>
          <td> <input type="submit" value="Submit Data" /> <input type="reset" value="Reset" />   </td>
      </tr>
    </table>
   </form>

  <br> <br>
</body>
</html>