package DAO;

import Model.GrupoMuscular;
import dao.Connect;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

/** * * @author agath */

public class GrupoMuscularDao {
    
    private final Connect connect;
    private String query;
    private PreparedStatement ps;
    //private ResultSet rs;

    public GrupoMuscularDao(){
        this.connect = new Connect();
    }

        public void cadastrarGrupoMuscular(GrupoMuscular gm){
        
        try{
            
            query =  "INSERT INTO grupomuscular (NomeGrupoMuscular) VALUES (?)";
             ps = connect.getConnection().prepareStatement(query);
            
            ps.setString(1,gm.getGrupoMuscular());
            
            ps.executeUpdate();
            
            ps.close();
            
        }
        catch(SQLException ex) {}
  
    } 
        
    
}
