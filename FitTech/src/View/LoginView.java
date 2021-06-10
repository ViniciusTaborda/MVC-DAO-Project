package View;

import Model.GymMember;
import java.util.Scanner;

public class LoginView {

    private GymMember gs;

    public GymMember LoginScreen() {

        gs = new GymMember();
        Scanner s = new Scanner(System.in);

        System.out.print("Enter your email: ");
        gs.setEmail(s.next());

        System.out.print("Enter your password: ");
        gs.setPassword(s.next());

        return gs;
    }

    public void isAuthenticated(boolean is_auth) {

        if (is_auth) {
            System.out.println("Authenticated");

        } else {
            System.out.println("Not auth");
        }

    }

}
