package dao;

import Model.GymMember;
import java.sql.PreparedStatement;
import java.sql.*;

public class GymMembertDAO {

    private final Connect connect;
    private String query;
    private PreparedStatement ps;

    public GymMembertDAO() {
        this.connect = new Connect();

    }

    public boolean AuthGymStudent(GymMember gs) {

        try {
            ResultSet rs;

            query = "SELECT * FROM gymmember WHERE email = '"
                    + gs.getEmail()
                    + "' AND password = '"
                    + gs.getPassword()
                    + "'";

            ps = connect.getConnection().prepareStatement(query);

            return ps.executeQuery(query) != null;

        } catch (SQLException e) {
            System.out.println("SQLException message: " + e.getMessage());
        }
        return false;
    }
}
