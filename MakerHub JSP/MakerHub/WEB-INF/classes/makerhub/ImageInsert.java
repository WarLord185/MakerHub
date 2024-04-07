package makerhub;
import java.sql.*;
// import java.text.SimpleDateFormat;
import java.util.Date;
public class ImageInsert {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/makerhub?autoReconnect=true&useSSL=false";
        String user = "root";
        String password = "Admin@2023";

        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            String query = "INSERT INTO Picture (Pic_ID, Pic_URL, UploadDate, Caption, Space_ID) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);

            for (int i = 1; i <= 17; i++) {
                pstmt.setInt(1, i);
                pstmt.setString(2, i + ".jpg");
                pstmt.setDate(3, new java.sql.Date(new Date().getTime()));
                pstmt.setString(4, "Caption for image " + i);
                pstmt.setInt(5, i); // Assuming Space_ID is the same as Pic_ID

                pstmt.executeUpdate();
            }

            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}