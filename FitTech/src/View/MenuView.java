package View;

import java.util.Scanner;

/**
 * * * @author agath
 */
public class MenuView {

    public int Menu() {

        Scanner sc = new Scanner(System.in);
        System.out.println("\n BEM VINDO AO APPLICATIVO FITTECH");

        System.out.println("\n(1) Cadastrar Aluno");
        System.out.println("(2) Cadastrar Grupo Muscular");
        System.out.println("(3) Cadastrar Exercicio");
        System.out.println("(4) Cadastrar Treino");
        System.out.println("(5) Selecionar Treino");
        System.out.println("(6) Selecionar Exercicio");
        System.out.println("(7) Cadastrar Endereço");
        System.out.println("(8) Login\n");

        System.out.println("(9) Sair\n");

        System.out.println("Feito por:");
        System.out.println("\t Agatha Moraes");
        System.out.println("\t Hannah Coutinho");
        System.out.println("\t Vinicius Taborda");

        System.out.print("Opção: ");

        return sc.nextInt();
    }

}
