import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/exeption/exeptions.dart';
import 'package:calculadora_imc/models/pessoa.dart';

class TerminalService {
  static Pessoa lerDadosTerminal() {
    String nome;
    while (true) {
      try {
        print('Digite o nome da pessoa');
        nome = stdin.readLineSync(encoding: utf8)?.trim() ?? '';
        if (nome.isEmpty) {
          throw NomeVazioException;
        }
        break;
      } catch (e) {
        print('Error: Preencha o nome do usuario');
      }
    }

    double peso;
    while (true) {
      try {
        print('Digite o peso da pessoa:');
        peso = double.parse(stdin.readLineSync()!);
        if (peso <= 0) {
          throw PesoInvalidoException;
        }
        break;
      } catch (e) {
        print('Erro: digite um valor numerico para o peso');
      }
    }

    double altura;
    while (true) {
      try {
        print('Digite a altura da pessoa:');
        altura = double.parse(stdin.readLineSync(encoding: utf8) ?? '');
        if (altura <= 0) {
          throw AlturaInvalidaException();
        }
        break;
      } catch (e) {
        print('Erro: digite um valor numerico para a altura');
      }
    }

    return Pessoa(nome, altura, peso);
  }
}
