<%@ page import="makerhub.*" %>

<html>
  <head>
    <link rel="stylesheet" href="register.css">
  </head>
  <body>
    <% 
      String rent_id = request.getParameter("r_id");
      String space_id = request.getParameter("s_id");
      String status = request.getParameter("stat");
      String start = request.getParameter("from");
      String end = request.getParameter("to");
      String date = request.getParameter("b_date");

      insert booking = new insert();
      int rowsInserted = booking.insertBooking(rent_id, space_id, status, date, start, end);
    %>

    <%
      if (rowsInserted <= 0) {
    %>
        <h2 class="heading2"> Space not Booked </h2>
        <div id="section2">
          Space Not Booked!!
        </div>
    <%
      } else {
      response.sendRedirect("homepage.jsp");
      }
    %>
  </body>
</html>

