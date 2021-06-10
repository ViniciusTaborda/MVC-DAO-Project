package View;

import Model.Aluno;
import java.util.Scanner;

public class LoginView {

    private Aluno a;

    public Aluno LoginScreen() {

        a = new Aluno();
        Scanner s = new Scanner(System.in);

        System.out.print("Digite seu email: ");
        a.setEmail(s.next());

        System.out.print("Digite sua senha: ");
        a.setPassword(s.next());

        return a;
    }

    public void isAuthenticated(boolean is_auth) {

        if (is_auth) {
            System.out.println("Authenticated");

        } else {
            System.out.println("Not auth");
        }

    }

}
