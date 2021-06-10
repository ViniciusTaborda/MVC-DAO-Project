package Model;

public class GymMember {
    
    //atributes
    public String email;
    public String password;
    private String cpf;
    private String nome;
    private int address;
    private String telefone;
    private String nascimento;
    private String condicoesMedicas;
    
    //constructor

    public GymMember(String email, String password, String cpf, String nome, int address, String telefone, String nascimento, String condicoesMedicas) {
        this.email = email;
        this.password = password;
        this.cpf = cpf;
        this.nome = nome;
        this.address = address;
        this.telefone = telefone;
        this.nascimento = nascimento;
        this.condicoesMedicas = condicoesMedicas;
    }

    public GymMember() {
        
    }
    
    
    //getters and setters
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAddress() {
        return address;
    }

    public void setAddress(int address) {
        this.address = address;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public String getCondicoesMedicas() {
        return condicoesMedicas;
    }

    public void setCondicoesMedicas(String condicoesMedicas) {
        this.condicoesMedicas = condicoesMedicas;
    }

}
