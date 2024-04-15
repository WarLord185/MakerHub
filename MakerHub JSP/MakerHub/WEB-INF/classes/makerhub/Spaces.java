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

    public ManagePicture getPictureForSpace(int spaceId) {
        ManagePicture picture = null;
        String sql = "SELECT * FROM `Picture` WHERE `Space_ID` = ?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, spaceId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                picture = new ManagePicture();
                picture.setPicId(rs.getInt("Pic_ID"));
                picture.setPicUrl(rs.getString("Pic_URL"));
                picture.setUploadDate(rs.getDate("Upload_Date"));
                picture.setCaption(rs.getString("Caption"));
                picture.setSpaceId(rs.getInt("Space_ID"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return picture;
    }

    public ArrayList<ManageBooking> getAllBookings() {
        ArrayList<ManageBooking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM `Booking`";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ManageBooking booking = new ManageBooking();
                booking.setBooking_ID(rs.getInt("Booking_ID"));
                booking.setRenter_ID(rs.getInt("Renter_ID"));
                booking.setSpace_ID(rs.getInt("Space_ID"));
                booking.setStatus(rs.getString("Status"));
                booking.setBookingDate(rs.getDate("BookingDate"));
                booking.setStartTime(rs.getTime("StartTime"));
                booking.setEndTime(rs.getTime("EndTime"));
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }
}