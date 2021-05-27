package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {

    private final String con_db;
    private final String mysql_user;
    private final String mysql_password;
    private Connection conn;

    public Connect() {
        this.con_db = "jdbc:mysql://localhost:3306/FitTech?useSSL=false";
        this.mysql_user = "root";
        this.mysql_password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(con_db, this.mysql_user, this.mysql_password);
        } catch (ClassNotFoundException ex) {
            System.out.println("Exception message: " + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Exception message: " + ex.getMessage());
        } catch (Exception ex) {
            System.out.println("Exception message: " + ex.getMessage());
        }
    }

    public Connection getConnection() {
        return this.conn;
    }
}
