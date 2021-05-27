package DAO;

/** * @author agath */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexao {

    private static Conexao conexao;
    private final String con_banco;
    private final String usuario_mysql;
    private final String senha_mysql;
    private Connection conn;
    
    Conexao(){
        
        usuario_mysql = "root";
        senha_mysql = "";
        
        con_banco = "jdbc:mysql://127.0.0.1:3306/fittech?useSSL=false";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(con_banco, usuario_mysql, senha_mysql);
            
        }catch( ClassNotFoundException ex){
            
        }catch(SQLException ex){
            
        }catch (Exception ex){
            
        }
    }
    
    public Connection getConexao(){
        return this.conn;
    }

    public static Conexao getInstance(){
        if (conexao == null){
            conexao = new Conexao();
        }
        return conexao;
        
    }

    
}
