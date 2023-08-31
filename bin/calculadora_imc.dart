import 'package:calculadora_imc/exceçoesimc.dart';
import 'dart:io';

void main() {
  print('Calcule seu IMC');
  stdout.write("\nDigite seu nome: ");
  String nome = stdin.readLineSync()!;
  stdout.write("Digite seu peso: ");
  var numero = stdin.readLineSync()!;
  stdout.write("Digite sua altura: ");
  var numero1 = stdin.readLineSync()!;
  double peso = verifica1(numero);
  double altura = verifica2(numero1);
  double imc = pessoa(peso, altura);
  print("\n$nome vôce está com: ");
  print(classi(imc));
}

pessoa(peso, altura) {
  return peso / (altura * altura);
}

classi(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "Magreza moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "Saudável";
  } else if (imc >= 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade Grau 1";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade Grau 2(Severa)";
  } else if (imc >= 40) {
    return "Obesidade Grau 3(Mórbida)";
  }
}
