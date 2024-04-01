class NomeVazioException implements Exception {
  
  String errorMessage() {
    return 'O nome da pessoa não pode ser vazio.';
  }
}

class PesoInvalidoException implements Exception {
  String errorMessage() {
    return 'O peso deve ser um valor positivo.';
  }
}

class AlturaInvalidaException implements Exception {
  String errorMessage() {
    return 'A altura deve ser um valor positivo.';
  }
}








