
package Controller;

import DAO.AddressDAO;
import Model.Address;
import View.CadastrarAddressView;

public class CadastrarAddressController {
        
    private CadastrarAddressView cadv;
    private Address ad;
    private AddressDAO adDAO;
    
    public CadastrarAddressController() {
        
        cadv = new CadastrarAddressView();
        
        ad = cadv.telaDeCadastro(ad); //agora tenho uma locadora
        
        adDAO = new AddressDAO(); //aqui eu ja estou abrindo conexão com o banco
        adDAO.insere(ad);
    }
}


