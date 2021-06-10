/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import Model.*;
import DAO.TreinoDao;
import java.sql.*;

public class SelecionarAlunoView {

    public SelecionarAlunoView(ResultSet result) {
        System.out.println("Treinos selecionados: \n");

        try {
            int i = 1;

            while (result.next()) {
                System.out.println("Treino número " + i + ".");
                System.out.println("Código do treino:" + result.getString(1));
                System.out.println("Identificação do exercicio: " + result.getString(2));
                System.out.println("Série: " + result.getString(3));
                System.out.println("Número de repetições: " + result.getString(4));
                System.out.println("identificação do aluno: " + result.getString(5));
                System.out.println("\n");
                i++;
            }
        } catch (Exception e) {
            System.out.println("Sem treinos cadastrados");
            System.out.println(e.getMessage());

        }

    }

}
