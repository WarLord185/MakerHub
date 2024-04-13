<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MakerHub</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0);
//prevents caching at the proxy server
%>
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
      <section>
        <div class="form-box">
            <div class="form-value">
                <form action="">
                    <h2>Login</h2>
                    <div class="inputbox">
                        <div class="icons"><svg width="24" height="24" viewBox="0 0 24 24" fill="#fff" xmlns="http://www.w3.org/2000/svg">
                        <g id="Communication / Mail">
                        <path id="Vector" d="M4 6L10.1076 10.6123L10.1097 10.614C10.7878 11.1113 11.1271 11.3601 11.4988 11.4562C11.8272 11.5412 12.1725 11.5412 12.501 11.4562C12.8729 11.36 13.2132 11.1105 13.8926 10.6123C13.8926 10.6123 17.8101 7.60594 20 6M3 15.8002V8.2002C3 7.08009 3 6.51962 3.21799 6.0918C3.40973 5.71547 3.71547 5.40973 4.0918 5.21799C4.51962 5 5.08009 5 6.2002 5H17.8002C18.9203 5 19.4796 5 19.9074 5.21799C20.2837 5.40973 20.5905 5.71547 20.7822 6.0918C21 6.5192 21 7.07899 21 8.19691V15.8036C21 16.9215 21 17.4805 20.7822 17.9079C20.5905 18.2842 20.2837 18.5905 19.9074 18.7822C19.48 19 18.921 19 17.8031 19H6.19691C5.07899 19 4.5192 19 4.0918 18.7822C3.71547 18.5905 3.40973 18.2842 3.21799 17.9079C3 17.4801 3 16.9203 3 15.8002Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </g>
                        </svg>
                        </div>
                        <%-- <ion-icon name="mail-outline"></ion-icon> --%>
                        <input type="email" required>
                        <label for="">Email</label>
                    </div>
                    <div class="inputbox">
                        <div class="icons"><svg width="24" height="24" viewBox="0 0 24 24" fill="#fff" xmlns="http://www.w3.org/2000/svg">
                        <g id="Interface / Lock">
                        <path id="Vector" d="M9.23047 9H7.2002C6.08009 9 5.51962 9 5.0918 9.21799C4.71547 9.40973 4.40973 9.71547 4.21799 10.0918C4 10.5196 4 11.0801 4 12.2002V17.8002C4 18.9203 4 19.4801 4.21799 19.9079C4.40973 20.2842 4.71547 20.5905 5.0918 20.7822C5.5192 21 6.07902 21 7.19694 21H16.8031C17.921 21 18.48 21 18.9074 20.7822C19.2837 20.5905 19.5905 20.2842 19.7822 19.9079C20 19.4805 20 18.9215 20 17.8036V12.1969C20 11.079 20 10.5192 19.7822 10.0918C19.5905 9.71547 19.2837 9.40973 18.9074 9.21799C18.4796 9 17.9203 9 16.8002 9H14.7689M9.23047 9H14.7689M9.23047 9C9.10302 9 9 8.89668 9 8.76923V6C9 4.34315 10.3431 3 12 3C13.6569 3 15 4.34315 15 6V8.76923C15 8.89668 14.8964 9 14.7689 9" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </g>
                        </svg></div>
                        <%-- <ion-icon name="lock-closed-outline"></ion-icon> --%>
                        <input type="password" required>
                        <label for="">Password</label>
                    </div>
                    <div class="forget">
                        <label for=""><input type="checkbox">Remember Me</label>
                        <label for=""><a href="#">Forgot Password?</a></label> 
                    </div>
                    <button><a href= "homepage.jsp">Log in</a></button>
                    <div class="register">
                        <p>Don't have an account? <label for=""><a href="register.jsp">Register</a></p></label>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <%-- <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script> --%>
</body>
</html>