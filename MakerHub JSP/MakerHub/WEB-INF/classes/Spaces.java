package makerhub;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.text.SimpleDateFormat;

public class Spaces extends DBConnect {

    // Method to get all Space Owners
    public ArrayList<ManageSpaceOwner> getAllSpaceOwners() {
        ArrayList<ManageSpaceOwner> spaceOwners = new ArrayList<>();
        String sql = "SELECT * FROM `Space_Owner`";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ManageSpaceOwner owner = new ManageSpaceOwner();
                owner.setOwnerID(rs.getInt("Owner_ID"));
                owner.setName(rs.getString("Name"));
                owner.setAddress(rs.getString("Address"));
                owner.setPhoneNumber(rs.getString("Phone_Number"));
                owner.setDoB(sdf.format(rs.getDate("DoB")));
                spaceOwners.add(owner);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return spaceOwners;
    }

    public ArrayList<ManageSpaces> getAllSpaces() {
        ArrayList<ManageSpaces> spaces = new ArrayList<>();
        String sql = "SELECT * FROM `Space`";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ManageSpaces space = new ManageSpaces();
                space.setSpaceID(rs.getInt("Space_ID"));
                space.setSpaceName(rs.getString("space_Name"));  
                space.setAddress(rs.getString("Address"));
                space.setDescription(rs.getString("Description"));
                space.setType(rs.getString("Type"));
                space.setPrice(rs.getDouble("Price"));
                space.setAvailability(rs.getBoolean("Availability"));
                space.setOwnerID(rs.getInt("Owner_ID"));
                spaces.add(space);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return spaces;
    }
}