package makerhub;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.text.SimpleDateFormat;

public class Spaces extends DBConnect {

       public Spaces(){
           
       }

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

            if (rs.next()) {
                ManageSpaces space = new ManageSpaces();
                space.setSpaceID(rs.getInt("Space_ID"));
                space.setSpaceName(rs.getString("Space_Name"));  
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
        String sql = "SELECT * FROM `Booking`  ";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ManageBooking booking = new ManageBooking();
                booking.booking_ID=rs.getInt("Booking_ID");
                booking.renter_ID=rs.getInt("Renter_ID");
                booking.space_ID=rs.getInt("Space_ID");
                booking.status=rs.getString("Status");
                booking.bookingDate=rs.getDate("BookingDate");
                booking.startTime=rs.getTime("StartTime");
                booking.endTime=rs.getTime("EndTime");
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

    public int insertSpace(String name, String address, String description ,String type,String price, String av){
    	int rows = 0;

		try{
    		String insertStmt = "insert into space values(null,?,?,?,?,?,?,null)";
        	PreparedStatement stmt = conn.prepareStatement(insertStmt);      
        	stmt.setString(1, name);
        	stmt.setString(2, address);
      		stmt.setString(3, description);
            stmt.setString(4, type);
            stmt.setString(5, price);
            stmt.setString(6, av);
      		rows = stmt.executeUpdate();
		}
		catch (SQLException e) {
			System.out.println("ERROR - insertSpace()" +  e.getMessage());
		}
		return rows;
	}
      public ManageSpaces getspaceid(String name) {
        ManageSpaces id = null;
        String sql = "SELECT * FROM `Space` WHERE `Space_Name = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                id = new ManageSpaces();
                id.spaceID=rs.getInt("Space_ID");
              
            }
        } catch (SQLException e) {
           System.out.println("ERROR - getspaceid()" + e.getMessage());
        }
        return id;
    }

	public ArrayList<Category> getCategories(){
	    ArrayList<Category> list = new ArrayList<Category>();
 
               
		try{
			String query = "select * from category";
        	PreparedStatement stmt = conn.prepareStatement(query);
        	ResultSet rs = stmt.executeQuery();

        	while (rs.next()){
				Category c = new Category();
				c.id = rs.getString("CategoryID");
        		c.name = rs.getString("Name");
        		c.description = rs.getString("Description");
        		list.add(c);
        	}
		}
		catch (SQLException e) {
			System.out.println("ERROR - getCategories()" + e.getMessage());
		}
		return list;
	}
        public ArrayList<Owner> getOwner(){
        ArrayList<Owner> owneri= new ArrayList<Owner>();

            try{
            String query1 ="Select * Space_Owner";
            PreparedStatement stmt= conn.prepareStatement(query1);
            ResultSet rs=stmt.executeQuery();

            while(rs.next()){
                Owner o = new Owner();
                o.id=rs.getString("Owner_ID");
                o.name= rs.getString("Name");
                o.add=rs.getString("Address");
                o.no=rs.getString("Phone_Number");
                o.mail=rs.getString("Email");
                o.dob=rs.getString("DoB");
                o.type=rs.getString("Account_Type");
                owneri.add(o);  
            }
            }
            catch (SQLException e) {
			    System.out.println("ERROR - getOwner()" + e.getMessage());
		}
            return owneri;

        }

        public ManageSpaces getOwnerSpaces(String id) {
        ManageSpaces em = null;
        String sql = "SELECT * FROM `Space` WHERE `Owner_ID` = ? ";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                em = new ManageSpaces();
                em.space_Name=rs.getString("Space_Name");
                em.address=rs.getString("Address");
                em.description=rs.getString("Description");
                em.type=rs.getString("Type");
                em.price=rs.getDouble("Price");
                em.availability=rs.getBoolean("Availability");
                em.ownerID=rs.getInt("Owner_ID");
            }
        } catch (SQLException e) {
            System.out.println("ERROR - getOwnerSpaces()" + e.getMessage());
        }
        return em;
        }

        public ManageBooking getOwnerbookings(int id) {
        ManageBooking book = null;
        String sql = "SELECT * FROM `Booking` WHERE `Owner_ID` = ? ";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                book = new ManageBooking();
                book.booking_ID=rs.getInt("Booking_ID");
                book.renter_ID=rs.getInt("Renter_ID");
                book.space_ID=rs.getInt("Space_ID");
                book.status=rs.getString("Status");
                book.bookingDate=rs.getDate("BookingDate");
                book.startTime=rs.getTime("StartTime");
                book.endTime=rs.getTime("EndTime");
            }
        } catch (SQLException e) {
            System.out.println("ERROR - getOwnerbookings()" + e.getMessage());
        }
        return book;
        }

        public ManageSpaceOwner getOwnerid(String name) {
        ManageSpaceOwner oid = null;
        String sql = "SELECT * FROM `Space_Owner` WHERE `Name = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                oid = new ManageSpaceOwner();
                oid.ownerID=rs.getInt("Owner_ID");
            }
        } catch (SQLException e) {
           System.out.println("ERROR - getOwnerid()" + e.getMessage());
        }
        return oid;
    }    
}