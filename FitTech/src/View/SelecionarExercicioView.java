/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import Model.*;
import DAO.ExercicioDao;
import java.sql.*;

public class SelecionarExercicioView {

    public SelecionarExercicioView(ResultSet result) {
        System.out.println("Exercicios selecionados: \n");

        try {
            int i = 1;

            while (result.next()) {
                System.out.println("Exercicio " + i + ".");
                System.out.println("Identificação do exercicio: " + result.getString(1));
                System.out.println("Nome do exercicio: " + result.getString(2));
                System.out.println("Identificação do grupo muscular: " + result.getString(3));
                System.out.println("\n");
                i++;
            }
        } catch (SQLException e) {
            System.out.println("Sem treinos cadastrados");
            System.out.println(e.getMessage());

        }

    }

}
