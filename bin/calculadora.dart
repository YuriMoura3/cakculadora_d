import 'dart:io';

void main() {
  double numeroUm = 0.0;
  double numeroDois = 0.0;
  String operacao = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];
  String? entrada = "";

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

  void getOperacao() {
    print("Digite uma operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada != "") {
        if (operacoes.contains(entrada)) {
          operacao = entrada!;
        } else {
          print("Simbolo de Operação inválido");
          print ("Digite uma operação válida");
          getOperacao();
        }
      }
    }
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
      case "-":
        subtracao();
      case "*":
        multiplicacao();
      case "/":
        divisao();
      default:
        print("Símbolo da Operação é inválido");
        break;
    }
  }

  print("Digite o primeiro número:");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }
  getOperacao();

  print("Digite o segundo número:");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }
  print("O resultado é :");
  calcular();
}

  // print("Agora informe o símbolo da operação desejada:");
  // entrada = stdin.readLineSync();
  // if (entrada != null) {
  //   if (entrada != "") {
  //     operacao = entrada!;
  //   }
  // }