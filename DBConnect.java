
package makerhub;
import java.sql.*;

public class DBConnect {

	protected static Connection conn = null;

  	public DBConnect() {
  		if(conn == null){
  			try {

   				Class.forName("com.mysql.cj.jdbc.Driver");

				conn = DriverManager.getConnection(
								"jdbc:mysql://localhost:3306/makerhub?autoReconnect=true&useSSL=false",
								"root",
								"Luke20112005"
						);
    		}
			catch (Exception e) {
				System.out.println("Database connection error"+ e.getMessage());
			}
  		}

  	}//end constructor


  public void closeConnection(){
  	try {
		conn.close();
	}
	catch (SQLException e) {	}

  }
}

