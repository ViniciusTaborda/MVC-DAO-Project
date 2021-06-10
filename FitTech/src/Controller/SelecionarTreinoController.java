package Controller;

import View.*;
import Model.*;
import DAO.TreinoDao;

/**
 *
 * @author Vinicius Taborda
 */

public class SelecionarTreinoController {

    private final SelecionarTreinoView sev;
    private Treino t;
    private final TreinoDao tDao;
    public boolean is_auth;

    public SelecionarTreinoController() {

        tDao = new TreinoDao();
        result = tDao.selecionarTreino();
        sev = new SelecionarTreinoView();

        lv.isAuthenticated(is_auth);

    }

}
