package DAO;

import Model.Treino;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/** *  * @author agath */
public class TreinoDao {
    
    private final Conexao conn;
    private String query;
    private PreparedStatement ps;
    //private ResultSet rs;

    public TreinoDao(){
        this.conn = new Conexao();

    }

    public void cadastrarTreino(Treino t){

    try{

        query =  "INSERT INTO fittech (codTreino, idExercicio, serie, repeticao, idAluno) VALUES (?,?,?,?,?)";
        ps = conn.getConexao().prepareStatement(query);


        ps.setString(1,t.getcodTreino());
        ps.setInt(2,t.getidExercicio());
        ps.setInt(3,t.getSerie());
        ps.setInt(4,t.getRepeticao());
        ps.setInt(5,t.getidAluno());

        ps.executeUpdate();

        ps.close();

    }
    catch(SQLException ex) {}

}

}
