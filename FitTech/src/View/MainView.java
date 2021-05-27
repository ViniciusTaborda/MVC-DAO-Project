package View;

import java.util.Scanner;

public class MainView {

    public int mainScreen() {

        Scanner s = new Scanner(System.in);

        System.out.println("Welcome to FitTech!\n");
        System.out.println("[1] Login");
        System.out.println("[2] ...");
        System.out.println("[3] ...");

        int option = s.nextInt();

        return option;

    }
}
