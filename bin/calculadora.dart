import 'dart:io';

void main() {
  double numeroUm = 0.0;

  double numeroDois = 0.0;

  String operacao = "";

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  print("Digite o primeiro número:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  print("Digite o segundo número:");
  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  print("Agora informe o símbolo da operação desejada:");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      operacao = entrada;
    }
  }

  switch (operacao) {
    case "+":
      soma();
    case "-":
      subtracao();
    case "*":
      multiplicacao();
    case "/":
      divisao();

      break;
  }
}
