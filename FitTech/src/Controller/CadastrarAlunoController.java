package Controller;

import View.CadastrarAlunoView;
import DAO.AlunoDAO;
import Model.Aluno;

public class CadastrarAlunoController {

    //ATRIBUTOS
    private CadastrarAlunoView camv;
    private Aluno a;
    private AlunoDAO aDAO;

    //CONSTRUTOR
    public CadastrarAlunoController() {

        try {
            camv = new CadastrarAlunoView();

            a = camv.telaDeCadastro(a);

            aDAO = new AlunoDAO();
            aDAO.insereAluno(a);

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());

        }

    }
}
