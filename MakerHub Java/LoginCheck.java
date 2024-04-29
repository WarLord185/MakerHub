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
    
    public Login getAccountType(String username, String password) {
        Login login = null;
        String sql = "SELECT * FROM `Login` WHERE `Username` = ? AND `Password` = ?";
    
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
    
            if (rs.next()) {
                login = new Login();
                login.userId = rs.getInt("User_ID");
                login.username = rs.getString("Username");
                login.password = rs.getString("Password");
                login.accountType = rs.getString("Account_Type");
            }
        } catch (SQLException e) {
            System.out.println("ERROR - getAccountType(): " + e.getMessage());
        }
    
        return login;
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
        public String getType(String name) {
        String userType = "invalid";

        try {
            String query = "SELECT * FROM Login WHERE Username = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, name);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                userType = resultSet.getString("Account_Type");
            }
        } catch (SQLException e) {
            System.out.println("Error encountered executing getType(): " + e.getMessage());
        }

        return userType;
    }
}