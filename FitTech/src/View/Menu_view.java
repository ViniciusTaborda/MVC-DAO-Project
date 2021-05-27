package View;

import java.util.Scanner;

/*** * @author agath */

public class Menu_view {
    
        public int Menu(){
        
        Scanner sc = new Scanner(System.in);
        System.out.println("\n(1) Cadastrar Aluno");
        System.out.println("(2) Cadastrar Grupo Muscular");
        System.out.println("(3) Cadastrar Exercicio");
        System.out.println("(4) Cadastrar Treino\n");
        System.out.println("(9) Sair\n");
        System.out.print(" Opção: ");
    
        
        return sc.nextInt();
    }
    
    public void imprimirOpcaoInvalida(){
        System.out.println(" Opção Inválida, até logo");
    }
    
}
