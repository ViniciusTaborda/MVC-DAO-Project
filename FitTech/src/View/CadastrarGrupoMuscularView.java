package View;

import Model.GrupoMuscular;
import java.util.Scanner;

/**  * * @author agath */
public class CadastrarGrupoMuscularView {
    
        public GrupoMuscular CadastrarGrupoMuscular(GrupoMuscular gm){
        gm = new GrupoMuscular();

        Scanner sc = new Scanner(System.in);
        System.out.print("Grupo Muscular: ");
        gm.setGrupoMuscular(sc.nextLine());
        
        
        return gm;
    }
    
}
