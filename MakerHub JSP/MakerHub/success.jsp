<html>
  <head>
    <link rel="stylesheet" href="./success.css">
    <script>
      function unsuccessfulPopup() {
        alert("Account creation unsuccessful");
      }
    </script>
  </head>

<%@ page import="makerhub.*"%>

<%
    String name =request.getParameter("name");
    String add =request.getParameter("add");
    String date =request.getParameter("DOB");
    String tele =request.getParameter("tel");
    String email =request.getParameter("email");
    String username =request.getParameter("username");
    String password =request.getParameter("password");
    String accountType =request.getParameter("accountType");
  

    insert user= new insert();
    int r =  user.insertUser(name, add, date, email, tele, username, password, accountType);             


    if(r <= 0){
      out.println("<script type=\"text/javascript\">");
      out.println("unsuccessfulPopup();");
      out.println("</script>");
    } else {
      response.sendRedirect("homepage.jsp");
    }
%>
  </body>
</html>
