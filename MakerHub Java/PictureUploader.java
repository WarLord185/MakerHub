package makerhub;

import java.sql.*;
// import java.text.SimpleDateFormat;
import java.util.Date;

public class PictureUploader extends DBConnect {
    public PictureUploader() {
        super();
    }

    public boolean spaceIdExists(int spaceId) {
        String query = "SELECT Space_ID FROM Space WHERE Space_ID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, spaceId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            }
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void uploadPictures() {
        String query = "INSERT INTO Picture (Pic_ID, Pic_URL, UploadDate, Caption, Space_ID) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);

            for (int i = 1; i <= 20; i++) {
                if (!spaceIdExists(i)) {
                    System.out.println("Space_ID " + i + " does not exist in the Space table. Skipping this record.");
                    continue;
                }
                pstmt.setInt(1, i);
                pstmt.setString(2, i + ".jpg");
                pstmt.setDate(3, new java.sql.Date(new Date().getTime()));
                pstmt.setString(4, "Caption for image " + i);
                pstmt.setInt(5, i); // Assuming Space_ID is the same as Pic_ID

                pstmt.executeUpdate();
            }

            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        PictureUploader uploader = new PictureUploader();
        uploader.uploadPictures();
        uploader.closeConnection();
    }
}