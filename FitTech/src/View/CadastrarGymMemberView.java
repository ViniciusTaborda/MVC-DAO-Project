
package View;

import java.util.Scanner;
import Model.GymMember;

public class CadastrarGymMemberView {
    
    //CONSTRUTOR
    public GymMember telaDeCadastro(GymMember gm){
        
        gm = new GymMember();
        
        Scanner s = new Scanner(System.in);
        System.out.print("Nome completo: ");
        gm.setNome(s.next());
        
        System.out.print("CPF: ");
        gm.setCpf(s.next());
        
        System.out.print("Telefone: ");
        gm.setTelefone(s.next());
        
        System.out.print("Nome completo: ");
        gm.setNome(s.next());
                
        System.out.print("Data de Nascimento: ");
        gm.setNascimento(s.next());
        
        System.out.print("Condições Médicas: ");
        gm.setCondicoesMedicas(s.next());
        
        System.out.print("E-mail: ");
        gm.setEmail(s.next());
        
        System.out.print("Senha: ");
        gm.setPassword(s.next());
      
        return gm;
    }
}
