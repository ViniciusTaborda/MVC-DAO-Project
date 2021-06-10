package View;

import java.util.Scanner;
import Model.Aluno;

public class CadastrarAlunoView {

    //CONSTRUTOR
    public Aluno telaDeCadastro(Aluno a) {

        a = new Aluno();

        try {
            Scanner s = new Scanner(System.in);

            System.out.print("\nCADASTRO DE ALUNO\n");

            System.out.print("E-mail: ");
            a.setEmail(s.next());

            System.out.print("Senha: ");
            a.setPassword(s.next());

            System.out.print("CPF: ");
            a.setCpf(s.next());

            System.out.print("Nome: ");
            a.setNome(s.next());

            System.out.print("Telefone: ");
            a.setTelefone(s.next());

            System.out.print("Data de nascimento: ");
            a.setNascimento(s.next());

            System.out.print("Condicões Médicas: ");
            a.setCondicoesMedicas(s.next());

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }

        return a;
    }
}
