package Glen_HMS;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {

    public static Connection newConnection() throws Exception {

        String url = "jdbc:mysql://localhost/sealine_hotel_management_system?";
        String user = "root";
        String pass = "";

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection(url, user, pass);

        return con;

    }

}
