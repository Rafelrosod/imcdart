verifica1(numero) {
  try {
    double valor1 = double.parse(numero ?? "");
    return valor1;
  } catch (e) {
    print("Número inválido: $numero");
  }
}

verifica2(numero1) {
  try {
    double valor2 = double.parse(numero1 ?? "");
    return valor2;
  } catch (e) {
    print("Número inválido: $numero1");
  }
}
