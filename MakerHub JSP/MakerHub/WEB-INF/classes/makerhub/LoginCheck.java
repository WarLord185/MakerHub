package makerhub;
import java.sql.*;

public class LoginCheck extends DBConnect{
    public boolean checkLogin(String username, String password) {
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM Login WHERE Username=? AND Password=?");
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if(rs.next()) {
                return true;
            }
        } catch(SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }
}