package Controller;

import View.LoginView;
import Model.Aluno;
import DAO.AlunoDAO;

public class LoginController {

    private final LoginView lv;
    private Aluno gs;
    private final AlunoDAO gsDAO;
    public boolean is_auth;

    public LoginController() {

        gs = new Aluno();
        lv = new LoginView();
        gs = lv.LoginScreen();
        gsDAO = new AlunoDAO();
        is_auth = gsDAO.AutenticaAluno(gs);

        lv.isAuthenticated(is_auth);

    }

}
