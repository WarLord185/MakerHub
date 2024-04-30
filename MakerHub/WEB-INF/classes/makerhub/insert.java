package makerhub;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class insert extends DBConnect { 
    public int insertUser(String name, String add, String date, String tel, String email, String username, String password, String accountType){
    	int rows = 0;

		try{
            String insertStmt;
            if(accountType.equals("Renter")) {
                insertStmt = "insert into Renter values(null,?,?,?,?,?,?)";
            } else if(accountType.equals("Owner")) {
                insertStmt = "insert into Space_Owner values(null,?,?,?,?,?,?)";
            } else {
                return 0;
            }
            PreparedStatement stmt = conn.prepareStatement(insertStmt, PreparedStatement.RETURN_GENERATED_KEYS);
            stmt.setString(1, name);
            stmt.setString(2, add);
            stmt.setString(3, email);
            stmt.setString(4, tel);
            stmt.setString(5, date); 
            stmt.setString(6, accountType);
                        
            rows = stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                int last_inserted_id = rs.getInt(1);
                // Insert into Login table
                String insertLoginStmt = "insert into Login values(?,?,?,?)";
                PreparedStatement loginStmt = conn.prepareStatement(insertLoginStmt);
                loginStmt.setInt(1, last_inserted_id);
                loginStmt.setString(2, username);
                loginStmt.setString(3, password);
                loginStmt.setString(4, accountType);
                loginStmt.executeUpdate();
            }
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
		}
        return rows;
        
        
    }
    public int insertBooking(String rent_id, String space_id, String status, String date, String start, String end ){
       int rows = 0;
            try{
            String insertStmt = "INSERT INTO Booking (Renter_ID, Space_ID, Status, BookingDate, StartTime, EndTime) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(insertStmt, PreparedStatement.RETURN_GENERATED_KEYS);
            
            stmt.setString(1, rent_id);
            stmt.setString(2, space_id);
            stmt.setString(3, status);
            stmt.setString(4, date);
            stmt.setString(5, start); 
            stmt.setString(6, end);
                        
            rows = stmt.executeUpdate();
            
            
            
            stmt.close();
      
            }
            catch (SQLException e) {
		System.out.println(e.getMessage());
            }
        return rows;
       
      
       
            
        }
   
}
