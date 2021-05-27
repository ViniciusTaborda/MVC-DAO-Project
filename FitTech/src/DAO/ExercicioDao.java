package DAO;

import Model.Exercicio;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/** * * @author agath */
public class ExercicioDao {
    private final Conexao conn;
    private String query;
    private PreparedStatement ps;
    //private ResultSet rs;

    public ExercicioDao(){
        this.conn = new Conexao();
    }

        public void cadastrarExercicio(Exercicio e){
        
        try{
            
            query =  "INSERT INTO fittech (exercicio, idGrupoMuscular) VALUES (?,?)";
             ps = conn.getConexao().prepareStatement(query);
            
            ps.setString(1,e.getNomeExercicio());
            ps.setInt(2,e.getIdGrupoMuscular());
            
            ps.executeUpdate();
            
            ps.close();
            
        }
        catch(SQLException ex) {}
  
    }
    
}
