import 'package:calculadora_imc/exeption/exeptions.dart';

class Pessoa {
  String _nome = '';
  double _altura = 0.0;
  double _peso = 0.0;

  void setNome(String nome) => _nome = nome;
  void setAltura(double altura) => _altura = altura;
  void setPeso(double peso) => _peso = peso;
  String get nome => _nome;
  double get altura => _altura;
  double get peso => _peso;

  Pessoa(this._nome,  this._altura, this._peso){
    if (_nome.trim().isEmpty) {
      throw NomeVazioException();
    }

    if (_peso <= 0) {
      throw PesoInvalidoException();
    }

    if (_altura <= 0) {
      throw AlturaInvalidaException();
    }
  }


}
