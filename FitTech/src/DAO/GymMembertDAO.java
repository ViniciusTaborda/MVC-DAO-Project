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

    public ResultSet AuthGymStudent(GymMember gs) {

        try {
            ResultSet rs;

            query = "SELECT * FROM gymmember WHERE email = '"
                    + gs.getEmail()
                    + "' AND password = '"
                    + gs.getPassword()
                    + "'";

            ps = connect.getConnection().prepareStatement(query);

            //ps.setString(1, gs.getPassword());
            //ps.setString(2, gs.getEmail());
            rs = ps.executeQuery(query);

            return rs;

        } catch (SQLException e) {
            System.out.println("SQLException message: " + e.getMessage());
        }

        return null;

    }
}
