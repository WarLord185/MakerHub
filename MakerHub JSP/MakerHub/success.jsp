<html>
  <head>
    <link rel="stylesheet" href="./login.css">
  </head>
  <body>
    <div class = "blob-background">
      <svg width="585" height="475" viewBox="0 0 585 475" fill="none" xmlns="http://www.w3.org/2000/svg">
      <style>
        @keyframes colorChange1 {
          0%, 100% { fill: var(--color1); }
          50% { fill: var(--color2); }
        }
    
        path {
          animation: colorChange1 8s infinite linear;
        }
      </style>
      <path d="M59.6878 70.4072C2.64247 112.7 -16.8108 220.14 15.7866 303.15C34.714 338.439 85.6079 417.473 137.764 451.308C202.958 493.601 346.492 482.305 380.666 392.728C414.841 303.151 608.848 251.138 582.56 142.122C556.271 33.1053 429.562 31.2664 323.621 6.83623C217.68 -17.5939 116.733 28.1141 59.6878 70.4072Z" fill="#B071FF"/>
      </svg>
  </div>
    <%@ page import="makerhub.*"%>
    
    <%

     
      String name =request.getParameter("name");
      String a =request.getParameter("add");
      String tele=request.getParameter("tel");
      String date =request.getParameter("DOB");

    insert rent= new insert();

      int r =  rent.insertrenter(name, a, date, tele);                

    %>
    <div class="form-box">

        <%
          if(r <= 0){
        %>
          <h2 class="heading2"> creation of Account was Unsuccessful</h2>
          <div id="section2">
               renter not added!!
          </div>
        <%
          }
          else{
        %>

        <h2 class="heading2"> Account created!! </h2>
        <div id="section2">
             
        </div>
      <%
          }
      %>
        </div>
  </body>
</html>
