package Controller;

import View.LoginView;
import Model.GymMember;
import DAO.GymMembertDAO;

public class LoginController {

    private final LoginView lv;
    private GymMember gs;
    private final GymMembertDAO gsDAO;
    public boolean is_auth;

    public LoginController() {
        
        gs = new GymMember();
        lv = new LoginView();
        gs = lv.LoginScreen();
        gsDAO = new GymMembertDAO();
        is_auth = gsDAO.AuthGymStudent(gs);
        
        System.out.println(is_auth);
        
        if (is_auth) {
            System.out.println("Authenticated");
            
        }else{
            System.out.println("Not auth");
        }
       

        
        
    }

}
