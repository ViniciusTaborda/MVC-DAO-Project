
package Controller;

import DAO.EnderecoDAO;
import Model.Endereco;
import View.CadastrarEnderecoView;

public class CadastrarEnderecoController {
        
    private CadastrarEnderecoView cadv;
    private Endereco ad;
    private EnderecoDAO adDAO;
    
    public CadastrarEnderecoController() {
        
        cadv = new CadastrarEnderecoView();
        
        ad = cadv.telaDeCadastro(ad); //agora tenho uma locadora
        
        adDAO = new EnderecoDAO(); //aqui eu ja estou abrindo conexão com o banco
        adDAO.insere(ad);
    }
}


