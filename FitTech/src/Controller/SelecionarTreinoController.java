package Controller;

import View.*;
import Model.*;
import DAO.TreinoDao;
import java.sql.*;

public class SelecionarTreinoController {

    private final SelecionarTreinoView sev;
    private final TreinoDao tDao;
    public ResultSet result;

    public SelecionarTreinoController() {

        tDao = new TreinoDao();
        result = tDao.selecionarTreino();
        sev = new SelecionarTreinoView(result);

    }
}
