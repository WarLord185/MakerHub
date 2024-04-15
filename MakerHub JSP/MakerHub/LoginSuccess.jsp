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
    if (isValidLogin) {
        session.setAttribute("Username", username);
        response.sendRedirect("homepage.jsp");
    } else {
        out.println("<script type=\"text/javascript\">");
        out.println("unsuccessfulPopup();");
        out.println("</script>");
    }
%>
</body>
</html>
