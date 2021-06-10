
package Controller;

import View.CadastrarGymMemberView;
import DAO.GymMembertDAO;
import Model.GymMember;

public class CadastrarGymMemberController {
    
    //ATRIBUTOS
    private CadastrarGymMemberView cgmv;
    private GymMember gm;
    private GymMembertDAO gmDAO;
            
    //CONSTRUTOR
    public CadastrarGymMemberController() { //a lógica dele é chamar a view
        
        
        cgmv = new CadastrarGymMemberView(); //abrir tela de cadastro
        gm = cgmv.telaDeCadastro(gm); //chamar a tela pra preencher os dados
        
        gmDAO = new GymMembertDAO();
        gmDAO.insere(gm);
         
    }
}
