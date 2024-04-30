<html>
  <head>
    <link rel="stylesheet" href="./success.css">
    <script>
        function unsuccessfulPopup() {
            alert("Login Failed");
        }
    </script>
</head>
    <%@ page import="makerhub.*"%>
    <%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    LoginCheck loginCheck = new LoginCheck();
    boolean isValidLogin = loginCheck.checkLogin(username, password);
   
   LoginCheck a = new LoginCheck();
   String userType = a.getType(username); 

   if (userType.equals("Owner")) {    
    response.sendRedirect("OwnerDashboard.jsp");
    session.setAttribute("username", username);
    
   
} else if (userType.equals("Renter")) {
    response.sendRedirect("homepage.jsp");
        
}
 else {
    response.sendRedirect("MakerHubLogin.jsp");
}

   
%>
</body>
</html>