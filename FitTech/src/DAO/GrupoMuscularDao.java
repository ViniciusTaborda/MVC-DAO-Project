package DAO;

import Model.GrupoMuscular;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

/** * * @author agath */

public class GrupoMuscularDao {
    
    private final Conexao conn;
    private String query;
    private PreparedStatement ps;
    //private ResultSet rs;

    public GrupoMuscularDao(){
        this.conn = new Conexao();
    }

        public void cadastrarGrupoMuscular(GrupoMuscular gm){
        
        try{
            
            query =  "INSERT INTO fittech (grupoMuscular) VALUES (?)";
             ps = conn.getConexao().prepareStatement(query);
            
            ps.setString(1,gm.getGrupoMuscular());
            
            ps.executeUpdate();
            
            ps.close();
            
        }
        catch(SQLException ex) {}
  
    } 
        
    
}
