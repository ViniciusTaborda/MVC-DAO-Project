package Controller;

import DAO.ExercicioDao;
import Model.Exercicio;
import View.CadastrarExercicioView;


/** * * @author agath */

public class CadastrarExercicioController {
    
    private CadastrarExercicioView cev;
    private Exercicio e;
    private ExercicioDao eDAO;

    public CadastrarExercicioController() {
        
        cev = new CadastrarExercicioView();
        e = cev.CadastrarExercicio(e);
        
        eDAO = new ExercicioDao();
        eDAO.cadastrarExercicio(e);
        

    }
    
}
