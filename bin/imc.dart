import 'dart:io';

String calculoIMC(double peso, double altura) {
  double imc = peso / ((altura / 100) * (altura / 100));
  //convertendo altura em cm para m

  return imc.toStringAsFixed(
      1); //transformando o valor em string para formatar as casas decimais
}

void main() {
  print("Digite o peso (em kg): ");
  String? inputPeso = stdin.readLineSync(); //lendo o valor do peso em string
  print("Digite a altura (em cm): ");
  String? inputAltura =
      stdin.readLineSync(); //lendo a valor da altura em string
  double peso = double.parse(inputPeso!); //convertendo string para double
  double altura = double.parse(inputAltura!); //convertendo string para double

  print('seu imc é de: ${calculoIMC(peso, altura)}');
}
