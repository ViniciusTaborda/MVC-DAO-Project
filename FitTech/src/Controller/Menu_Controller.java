package Controller;

import View.Menu_view;

/**
 * * * @author agath
 */
public class Menu_Controller {

    private Menu_view menuView;
    private CadastrarGrupoMuscularController cgmc;
    private CadastrarExercicioController cec;
    private CadastrarTreinoController ctc;

    public Menu_Controller() {

        menuView = new Menu_view();

        switch (menuView.Menu()) {

            case 1:
                //cadastrar aluno
                break;
            case 2:
                cgmc = new CadastrarGrupoMuscularController();
                break;
            case 3:
                cec = new CadastrarExercicioController();
                break;
            case 4:
                ctc = new CadastrarTreinoController();
                break;
            case 5:
                SelecionarTreinoController stc = new SelecionarTreinoController();
            case 6:
                SelecionarTreinoController sec = new SelecionarTreinoController();
            case 7:
                LoginController lg = new LoginController();

            case 9:
                System.exit(0);
                break;

            default:
                break;
        }
    }
}
