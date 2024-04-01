import 'package:calculadora_imc/models/imc_calculator.dart';
import 'package:calculadora_imc/service/terminal_service.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void execute() {
  Pessoa pessoa = TerminalService.lerDadosTerminal();
  double imc = IMCCalculator.calcularIMC(pessoa);

  print('O IMC de ${pessoa.nome} é $imc');

  if (imc < 16) {
    print('A pessoa está com magreza grave');
  } else if (imc >= 16 && imc < 17) {
    print('A pessoa está com magreza moderada.');
  } else if (imc >= 17 && imc < 18.5) {
    print('A pessoa está com magreza leve.');
  } else if (imc >= 18.5 && imc < 25) {
    print('A pessoa está osaudável.');
  } else if (imc >= 25 && imc < 30) {
    print('A pessoa está com sobrepeso.');
  } else if (imc >= 30 && imc < 35) {
    print('A pessoa está com obesidade de grau I');
  } else if (imc >= 35 && imc < 40) {
    print('A pessoa está com obesidade grau II (severa).');
  } else if (imc >= 40) {
    print('A pessoa está com obesidade grau III (mórbida).');
  }
}
