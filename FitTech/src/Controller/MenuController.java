package Controller;

import View.MenuView;

/**
 * * * @author agath
 */
public class MenuController {

    private MenuView menuView;

    public MenuController() {

        menuView = new MenuView();

        switch (menuView.Menu()) {

            case 1:
                CadastrarAlunoController cac = new CadastrarAlunoController();

                break;
            case 2:
                CadastrarGrupoMuscularController cgmc = new CadastrarGrupoMuscularController();
                break;
            case 3:
                CadastrarExercicioController cec = new CadastrarExercicioController();
                break;
            case 4:
                CadastrarTreinoController ctc = new CadastrarTreinoController();
                break;
            case 5:
                SelecionarTreinoController stc = new SelecionarTreinoController();
                break;
            case 6:
                SelecionarExercicioController sec = new SelecionarExercicioController();
                break;

            case 7:
                LoginController lg = new LoginController();
                break;

            case 9:
                System.exit(0);
                break;

            default:
                break;
        }
    }
}
