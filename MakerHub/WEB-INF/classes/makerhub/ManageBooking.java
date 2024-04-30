package makerhub;
import java.sql.Time;
import java.sql.Date;

public class ManageBooking{
    public int booking_ID;
     public int renter_ID;
     public int space_ID;
     public String status;
     public Date bookingDate;
     public Time startTime;
     public Time endTime;
public ManageBooking(){}
    // Getters
    public int getBooking_ID() {
        return booking_ID;
    }

    public int getRenter_ID() {
        return renter_ID;
    }

    public int getSpace_ID() {
        return space_ID;
    }

    public String getStatus() {
        return status;
    }

    public Date getBookingDate() {
        return bookingDate;
    }

    public Time getStartTime() {
        return startTime;
    }

    public Time getEndTime() {
        return endTime;
    }

    // Setters
    public void setBooking_ID(int booking_ID) {
        this.booking_ID = booking_ID;
    }

    public void setRenter_ID(int renter_ID) {
        this.renter_ID = renter_ID;
    }

    public void setSpace_ID(int space_ID) {
        this.space_ID = space_ID;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public void setStartTime(Time startTime) {
        this.startTime = startTime;
    }

    public void setEndTime(Time endTime) {
        this.endTime = endTime;
    }
    
}
