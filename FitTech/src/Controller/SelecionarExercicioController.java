package Controller;

import View.*;
import DAO.ExercicioDao;
import java.sql.*;

public class SelecionarExercicioController {

    private final SelecionarExercicioView sev;
    private final ExercicioDao eDao;
    public ResultSet result;

    public SelecionarExercicioController() {

        eDao = new ExercicioDao();
        result = eDao.selecionarExercicio();
        sev = new SelecionarExercicioView(result);

    }
}
