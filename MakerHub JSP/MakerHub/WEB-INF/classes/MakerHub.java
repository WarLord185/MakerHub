package makerhub;
import java.util.*;

public class MakerHub {
    public static void main(String[] args) {
        // insert i= new insert();     
        // i.insertrenter("Sulin", "#6 Simpson Street Adeola Village","2021-12-01" , "796-0030");
                Spaces spaces = new Spaces();
        
                // Test getAllSpaceOwners method
                ArrayList<ManageSpaceOwner> spaceOwners = spaces.getAllSpaceOwners();
                for (ManageSpaceOwner owner : spaceOwners) {
                    System.out.println("Owner ID: " + owner.getOwnerID());
                    System.out.println("Name: " + owner.getName());
                    System.out.println("Address: " + owner.getAddress());
                    System.out.println("Phone Number: " + owner.getPhoneNumber());
                    System.out.println("Date of Birth: " + owner.getDoB());
                    System.out.println();
                }
        
                // Test getAllSpaces method
                ArrayList<ManageSpaces> allSpaces = spaces.getAllSpaces();
                for (ManageSpaces space : allSpaces) {
                    System.out.println("Space ID: " + space.getSpaceID());
                    System.out.println("Space Name: " + space.getSpaceName());
                    System.out.println("Address: " + space.getAddress());
                    System.out.println("Description: " + space.getDescription());
                    System.out.println("Type: " + space.getType());
                    System.out.println("Price: " + space.getPrice());
                    System.out.println("Availability: " + space.isAvailability());
                    System.out.println("Owner ID: " + space.getOwnerID());
                    System.out.println();
                }
            }
        }
