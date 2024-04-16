<html>
  <head>
    <link rel="stylesheet" href="dashboard.css">
  </head>
  <body>

    <%@ page import="makerhub.*, java.util.ArrayList" %>
    <%

    
      String name = request.getParameter("sname");
      String address= request.getParameter("add");
      String Descrition= request.getParameter("desc");
      String category =request.getParameter("ct");
      String Price= request.getParameter("price");
      String Owner= request.getParameter("oi");
    

      Spaces m = new Spaces();

      int r =  m.insertSpace(name, address, Description, category, Price,  oi);                 
    %>
      <h1 id="heading1"> Add New Space: Notification</h1>
      <br> <br>
      <%@ include file="links.jsp" %>
      <br> <br>  <br>  <hr>   <br>

        <%
          if(r <= 0){
        %>
          <h2 class="heading2"> Insert UNSUCCESSFUL </h2>
          <div id="section2">
              Space not added!!
          </div>
        <%
          }
          else{
        %>

        <h2 class="heading2"> Insert SUCCESSFUL!! </h2>
        <div id="section2">
             The following has been added: <%= name %>
        </div>
      <%
          }
      %>
  </body>
</html>
