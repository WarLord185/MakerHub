package makerhub;
public class TestInsert {
    public static void main(String[] args) {
        // Create an instance of the insert class
        insert user = new insert();

        // Define test data
        String name = "Test Name";
        String add = "Test Address";
        String email = "test@email.com";
        String tel = "567890";
        String date = "2000-01-01";
        String username = "testuser";
        String password = "testpassword";
        String accountType = "Renter";

        // Call the insertUser method with the test data
        int r = user.insertUser(name, add, date, email, tel, username, password, accountType);

        // Print the result
        if (r > 0) {
            System.out.println("User inserted successfully!");
        } else {
            System.out.println("Failed to insert user.");
        }
    }
}