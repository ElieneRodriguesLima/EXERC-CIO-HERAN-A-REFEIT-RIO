class Usuario {
  bool reserva = false;

  void realizarReserva() {
    if (!reserva) {
      reserva = true;
      print("Reserva realizada com sucesso!");
    } else {
      print("Você já possui uma reserva.");
    }
  }

  void acessarRefeitorio() {
    if (reserva) {
      reserva = false;
      print("Acesso ao refeitório liberado. Aproveite sua refeição!");
    } else {
      print("Você precisa realizar uma reserva antes de acessar o refeitório.");
    }
  }
}

void main() {
  Usuario aluno = Usuario();
  Usuario servidor = Usuario();

  aluno.realizarReserva();
  aluno.acessarRefeitorio();

  servidor.realizarReserva();
  servidor.acessarRefeitorio();

  servidor.acessarRefeitorio();
}
