package Controller;

import View.MainView;
import java.sql.ResultSet;

public class MainController {

    private MainView mv;

    public MainController() {

        mv = new MainView();
        int option = mv.mainScreen();

        switch (option) {
            case 1:
                LoginController lg = new LoginController();
                break;
            case 2:
                break;

            case 3:
                break;
        }

    }

}
