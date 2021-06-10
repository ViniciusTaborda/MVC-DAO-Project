package View;

import Model.GrupoMuscular;
import java.util.Scanner;

/**
 * * * @author agath
 */
public class CadastrarGrupoMuscularView {

    public GrupoMuscular CadastrarGrupoMuscular(GrupoMuscular gm) {
        gm = new GrupoMuscular();
        System.out.print("\nCADASTRO DE GRUPO MUSCULAR\n");

        Scanner sc = new Scanner(System.in);
        System.out.print("Grupo Muscular: ");
        gm.setGrupoMuscular(sc.nextLine());

        return gm;
    }

}
