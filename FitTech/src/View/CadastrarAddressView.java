
package View;

import Model.Address;
import java.util.Scanner;

public class CadastrarAddressView {

    //CONSTRUTOR
    public Address telaDeCadastro(Address ad){
        
        ad = new Address();
        
        Scanner s = new Scanner(System.in);
        
        System.out.print("Logradouro: ");
        ad.setLogradouro(s.next());
        
        System.out.print("Número: ");
        ad.setNumero(s.nextInt());
        
        System.out.print("Bairro: ");
        ad.setBairro(s.next());
        
        System.out.print("Cidade: ");
        ad.setCidade(s.next());
                
        System.out.print("UF: ");
        ad.setUf(s.next());
        
        System.out.print("Complemento: ");
        ad.setComplemento(s.next());
       

        return ad;
    }
        
}
