package View;

import Model.Treino;
import java.util.Scanner;

/** * * @author agath */
public class CadastrarTreinoView {
    
    public Treino CadastrarExercicio(Treino t){
        t = new Treino();

        Scanner sc = new Scanner(System.in);
        System.out.print("Nome Treino: ");
        t.setcodTreino(sc.nextLine());
        System.out.print("ID Exercicio: ");
        t.setidExercicio(sc.nextInt());        
        System.out.print("série: ");
        t.setSerie(sc.nextInt());        
        System.out.print("repetição: ");
        t.setRepeticao(sc.nextInt());        
        System.out.print("ID Aluno: ");
        t.setidAluno(sc.nextInt());        
        
        return t;
    }
}
