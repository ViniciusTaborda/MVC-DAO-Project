package DAO;

import Model.Exercicio;
import dao.Connect;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/** * * @author agath */
public class ExercicioDao {
    private final Connect connect;
    private String query;
    private PreparedStatement ps;
    //private ResultSet rs;

    public ExercicioDao(){
        this.connect = new Connect();
    }

        public void cadastrarExercicio(Exercicio e){
        
        try{
            
            query =  "INSERT INTO exercicio (nomeExercicio, idGrupoMuscular) VALUES (?,?)";
             ps = connect.getConnection().prepareStatement(query);
            
            ps.setString(1,e.getNomeExercicio());
            ps.setInt(2,e.getIdGrupoMuscular());
            
            ps.executeUpdate();
            
            ps.close();
            
        }
        catch(SQLException ex) {}
  
    }
    
}
