import 'package:calculadora_imc/exeption/exeptions.dart';
import 'package:calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

//nome, altura, peso;
void main() {
  group('Testes da classe Pessoa', () {
    test('Lançamento de exceção para nome vazio', () {
      expect(() => Pessoa('', 70, 1.75), throwsA(isA<NomeVazioException>()));
      print('Lançamento de exceção para nome vazio: aprovado');
    });

    test('Lançamento de exceção para peso zero ou negativo', () {
      expect(() => Pessoa('João', 1.70, 0), throwsA(isA<PesoInvalidoException>()));
      expect(() => Pessoa('Maria', 1.70, -85), throwsA(isA<PesoInvalidoException>()));
      print('Lançamento de exceção para peso zero ou negativo: Aprovado');
    });

    test('Lançamento de exceção para altura zero ou negativa', () {
      expect(() => Pessoa('Pedro', 0, 80),
          throwsA(isA<AlturaInvalidaException>()));
      expect(
          () => Pessoa('Ana', -1.75, 70), throwsA(isA<AlturaInvalidaException>()));
      print('Lançamento de exceção para altura zero ou negativa: Aprovado');
    });

    test('Criação de pessoa com valores válidos', () {
      Pessoa pessoa = Pessoa('Carlos', 1.80, 80);
      expect(pessoa.nome, 'Carlos');
      expect(pessoa.peso, 80);
      expect(pessoa.altura, 1.80);
      print('Criação de pessoa com valores válidos: Aprovado');
    });
  });
}
