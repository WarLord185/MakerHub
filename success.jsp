<html>
  <head>
    <link rel="stylesheet" href="register.css">
  </head>
  <body>

    <%@ page import="makerhub.*, java.util.ArrayList"%>
    
    <%

     
      String name =request.getParameter("name");
      String a =request.getParameter("add");
      String tele=request.getParameter("tel");
      String date =request.getParameter("DOB");

    insertUser rent= new insertUser();

      int r =  rent.insertrenter(name, a, date, tele);                

    %>
      

        <%
          if(r <= 0){
        %>
          <h2 class="heading2"> Insert UNSUCCESSFUL </h2>
          <div id="section2">
               renter not added!!
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
