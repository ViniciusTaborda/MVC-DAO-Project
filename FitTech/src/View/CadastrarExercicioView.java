package View;

import Model.Exercicio;
import java.util.Scanner;

/**  *  * @author agath */
public class CadastrarExercicioView {
        
        public Exercicio CadastrarExercicio(Exercicio e){
        e = new Exercicio();

        Scanner sc = new Scanner(System.in);
        System.out.print("nome Exercicio: ");
        e.setNomeExercicio(sc.nextLine());
        System.out.print("Cod Grupo Muscular: ");
        e.setIdGrupoMuscular(sc.nextInt());        
        
        return e;
    }
}
