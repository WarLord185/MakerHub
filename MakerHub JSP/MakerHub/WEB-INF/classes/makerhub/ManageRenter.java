package makerhub;

import java.sql.Date;

public class ManageRenter{
    private int renter_ID;
    private String name;
    private String address;
    private Date dob;
    private String phone_Number;
    // Getters
    public int getRenter_ID() {
        return renter_ID;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public Date getDob() {
        return dob;
    }

    public String getPhone_Number() {
        return phone_Number;
    }

    // Setters
    public void setRenter_ID(int renter_ID) {
        this.renter_ID = renter_ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setPhone_Number(String phone_Number) {
        this.phone_Number = phone_Number;
    }
}
