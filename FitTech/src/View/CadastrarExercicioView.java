package View;

import Model.Exercicio;
import java.util.Scanner;

public class CadastrarExercicioView {

    public Exercicio CadastrarExercicio(Exercicio e) {
        e = new Exercicio();

        System.out.print("\nCADASTRO DE EXERCICIO\n");

        Scanner sc = new Scanner(System.in);
        System.out.print("Nome Exercicio: ");
        e.setNomeExercicio(sc.nextLine());
        System.out.print("Código do Grupo Muscular: ");
        e.setIdGrupoMuscular(sc.nextInt());

        return e;
    }
}
