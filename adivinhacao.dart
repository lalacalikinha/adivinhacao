import 'dart:io';
import 'dart:math';

void main() {
  print('Bem-vindo ao jogo de adivinhação!');
  print('Estou pensando em um número entre 1 e 100. Tente adivinhar!');

  final random = Random();
  final int numeroSecreto = random.nextInt(100) + 1;

  int tentativas = 0;
  int? chute;
  
  while (chute != numeroSecreto) {
    stdout.write('Digite seu numero: ');
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      print('Entrada inválida. Tente novamente.');
      continue;
    }
    chute = int.tryParse(entrada);
    if (chute == null || chute < 1 || chute > 100) {
      print('Por favor, digite um número entre 1 e 100.');
      continue;
    }
    tentativas++;

    if (chute < numeroSecreto) {
      print('Tente um número maior.');
    } else if (chute > numeroSecreto) {
      print('Tente um número menor.');
    } else {
      print('Parabéns! Você acertou o número em $tentativas tentativas.');
    }
  }
}
