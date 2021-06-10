package Controller;

import DAO.TreinoDao;
import Model.Treino;
import View.CadastrarTreinoView;

/**
 * * * @author agath
 */
public class CadastrarTreinoController {

    private CadastrarTreinoView ctv;
    private Treino t;
    private TreinoDao tDAO;

    public CadastrarTreinoController() {

        ctv = new CadastrarTreinoView();
        t = ctv.CadastrarExercicio(t);

        tDAO = new TreinoDao();
        tDAO.cadastrarTreino(t);

    }

}
