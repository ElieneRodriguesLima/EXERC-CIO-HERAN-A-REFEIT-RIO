class Usuario {
  int matricula;
  String nome;
  String cpf;

  Usuario(this.matricula, this.nome, this.cpf);
}

class Aluno extends Usuario {
  String nivel;

  Aluno(int matricula, String nome, String cpf, this.nivel)
      : super(matricula, nome, cpf);
}

class Servidor extends Usuario {
  double saldo;

  Servidor(int matricula, String nome, String cpf, this.saldo)
      : super(matricula, nome, cpf);
}

void main() {
  Aluno aluno = Aluno(12345, "Eliene", "12345678900", "Superior");
  Servidor servidor = Servidor(54321, "Maria", "98765432100", 100.0);

  print("Aluno:");
  print("Matrícula: ${aluno.matricula}");
  print("Nome: ${aluno.nome}");
  print("CPF: ${aluno.cpf}");
  print("Nível: ${aluno.nivel}");

  print("\nServidor:");
  print("Matrícula: ${servidor.matricula}");
  print("Nome: ${servidor.nome}");
  print("CPF: ${servidor.cpf}");
  print("Saldo: ${servidor.saldo}");
}
