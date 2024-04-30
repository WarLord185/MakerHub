package makerhub;

public class TestLoginCheck {
    public static void main(String[] args) {
        LoginCheck loginCheck = new LoginCheck();
        String testUsername = "Shastri";  // replace with a test username
        String testPassword = "newPass";  // replace with a test password
        boolean loginSuccess = loginCheck.checkLogin(testUsername, testPassword);
        System.out.println("Login Success: " + loginSuccess);
    }
}