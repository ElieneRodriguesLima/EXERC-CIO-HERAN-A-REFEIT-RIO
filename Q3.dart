class Usuario {
  String nome;
  double saldo;

  Usuario(this.nome, this.saldo);

  void realizarRecarga(double valor) {
    saldo += valor;
  }

  void realizarReserva() {
    if (saldo >= 2.0) {
      saldo -= 2.0;
      print('$nome realizou a reserva e acessou o refeitório.');
    } else {
      print('$nome não possui saldo suficiente para realizar a reserva.');
    }
  }

  void mostrarSaldo() {
    print('Saldo de $nome: R\$ $saldo');
  }
}

void main() {
  Usuario aluno = Usuario('Aluno', 0.0);
  Usuario servidor = Usuario('Servidor', 5.0);

  aluno.realizarReserva(); 

  servidor.realizarRecarga(10.0);
  servidor.mostrarSaldo(); 

  servidor.realizarReserva(); 
  servidor.mostrarSaldo(); 
}
