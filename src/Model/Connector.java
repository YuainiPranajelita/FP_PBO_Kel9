package Model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;
public class Connector {
    private static Connection MySQLConfig;
    public static Connection configDB() throws SQLException {
        try {
            String url = "jdbc:mysql://localhost:3306/apotikfasilkom";
            String user = "root";
            String pass = "";
            
            
            MySQLConfig = DriverManager.getConnection("jdbc:mysql://localhost:3306/apotikfasilkom", user, pass);
            
        }catch (SQLException e){
            System.out.println("Koneksi Gagal"+e.getMessage());
        }
        
        return MySQLConfig;
    }
    
    
}
