package DAO;

import Model.Aluno;
import java.sql.PreparedStatement;
import java.sql.*;

public class AlunoDAO {

    private final Connect connect;
    private String query;
    private PreparedStatement ps;

    public AlunoDAO() {
        this.connect = new Connect();

    }

    public boolean AutenticaAluno(Aluno gs) {

        try {
            ResultSet rs;

            query = "SELECT * FROM aluno WHERE email = '"
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

    public void insereAluno(Aluno gm) {
        try {
            query = "INSERT INTO aluno (email, password, cpf, nome, telefone, nascimento, condicoesMedicas) VALUES (?, ?, ?, ?, ?, ?, ?)";

            ps = connect.getConnection().prepareStatement(query);

            ps.setString(1, gm.getEmail());
            ps.setString(2, gm.getPassword());
            ps.setString(3, gm.getCpf());
            ps.setString(4, gm.getNome());
            ps.setString(5, gm.getTelefone());
            ps.setString(6, gm.getNascimento());
            ps.setString(7, gm.getCondicoesMedicas());

            ps.executeUpdate();

            ps.close();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

    }

}
