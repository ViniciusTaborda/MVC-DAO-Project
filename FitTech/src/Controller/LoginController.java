package Controller;

import View.LoginView;
import Model.GymMember;
import dao.GymMembertDAO;

public class LoginController {

    private final LoginView lv;
    private GymMember gs;
    private final GymMembertDAO gsDAO;

    public LoginController() {
        
        gs = new GymMember();
        lv = new LoginView();
        gs = lv.LoginScreen();
        gsDAO = new GymMembertDAO();
        gsDAO.AuthGymStudent(gs);

    }

}
