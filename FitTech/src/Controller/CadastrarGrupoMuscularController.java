package Controller;

import DAO.GrupoMuscularDao;
import Model.GrupoMuscular;
import View.CadastrarGrupoMuscularView;

/**  *  * @author agath */

public class CadastrarGrupoMuscularController {
    
    private CadastrarGrupoMuscularView cgmv;
    private GrupoMuscular gm;
    private GrupoMuscularDao gmDAO;

    public CadastrarGrupoMuscularController() {
        
        cgmv = new CadastrarGrupoMuscularView();
        gm = cgmv.CadastrarGrupoMuscular(gm);
        
        gmDAO = new GrupoMuscularDao();
        gmDAO.cadastrarGrupoMuscular(gm);
        

    }
}
