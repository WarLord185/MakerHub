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
    
    public Login getAccountType(String name,String passw) {
        Login em = null;
        String sql = "SELECT * FROM `Login` WHERE `Username` = ? AND  Password = ?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, passw);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                em = new Login();
                em.name=rs.getString("Username");
                em.passw=rs.getString("Password");
                em.account=rs.getString("Account_Type");
               
            }
        } catch (SQLException e) {
            System.out.println("ERROR - getAccountType()" + e.getMessage());
        }

        return em;
    }
      public boolean checkOwner(String username) {
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM Space_Owner WHERE Name=?" );
            pst.setString(1, username);
           
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
