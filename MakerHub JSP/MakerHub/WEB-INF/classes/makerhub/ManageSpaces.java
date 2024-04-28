package makerhub;

public class ManageSpaces {
    public int spaceID;
    public String space_Name;
    public String address;
    public String description;
    public String type;
    public double price;
    public boolean availability;
    public int ownerID;

    // Getter and Setter for Space_ID
    public int getSpaceID() {
        return spaceID;
    }

    public void setSpaceID(int spaceID) {
        this.spaceID = spaceID;
    }

    // Getter and Setter for Space_Name
    public String getSpaceName() {
        return space_Name;
    }

    public void setSpaceName(String spaceName) {
        this.space_Name = spaceName;
    }

    // Getter and Setter for Address
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    // Getter and Setter for Description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Getter and Setter for Type
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    // Getter and Setter for Price
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // Getter and Setter for Availability
    public boolean isAvailability() {
        return availability;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }

    // Getter and Setter for Owner_ID
    public int getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(int ownerID) {
        this.ownerID = ownerID;
    }
}
