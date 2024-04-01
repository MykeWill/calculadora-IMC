import 'package:calculadora_imc/models/pessoa.dart';

class IMCCalculator {
  static double calcularIMC(Pessoa pessoa) {
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }
}
