package View;

import Model.Endereco;
import java.util.Scanner;

public class CadastrarEnderecoView {

    //CONSTRUTOR
    public Endereco telaDeCadastro(Endereco ad) {

        ad = new Endereco();
        System.out.print("\nCADASTRO DE ENDEREÇO\n");

        Scanner s = new Scanner(System.in);

        System.out.print("Logradouro: ");
        ad.setLogradouro(s.next());

        System.out.print("Número: ");
        ad.setNumero(s.nextInt());

        System.out.print("Bairro: ");
        ad.setBairro(s.next());

        System.out.print("Cidade: ");
        ad.setCidade(s.next());

        System.out.print("UF: ");
        ad.setUf(s.next());

        System.out.print("Complemento: ");
        ad.setComplemento(s.next());

        return ad;
    }

}
