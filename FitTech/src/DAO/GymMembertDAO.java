package DAO;

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
    
    public void insere(GymMember gm) {
        try{
            query = "INSERT INTO gymmember (email, password, cpf, nome, address, telefone, nascimento, condicoesMedicas) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
            ps = connect.getConexao().prepareStatement(query); //essa query é a conexao que vai juntar um só objeto para depois executa-la.
        
            ps.setString(1, gm.getEmail());
            ps.setString(2, gm.getPassword());
            ps.setString(3, gm.getCpf());
            ps.setString(4, gm.getNome());
            ps.setInt(5, gm.getAddress());
            ps.setString(6, gm.getTelefone());
            ps.setString(7, gm.getNascimento());
            ps.setString(8, gm.getCondicoesMedicas());
        
            ps.executeUpdate();         
            ps.close();
        }
        catch(SQLException ex) {}
        
    }

}

