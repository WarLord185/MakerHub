
package makerhub;

import java.sql.PreparedStatement;
import java.sql.SQLException;


 
public class insert extends DBConnect {
    
    public insert(){
        
    }
    
     public int insertrenter(String n, String add, String date, String tel){
    	int rows = 0;

		try{
    		String insertStmt = "insert into Renter values(null,?,?,?,?)";
        	PreparedStatement stmt = conn.prepareStatement(insertStmt);

        	stmt.setString(1, n);
        	stmt.setString(2, add);
      		stmt.setString(3, date);
      		stmt.setString(4, tel);

      		rows = stmt.executeUpdate();
      		
		}

		catch (SQLException e) {
			System.out.println("ERROR - insertrenter()" +  e.getMessage());
		}

		return rows;
	}
    
}
