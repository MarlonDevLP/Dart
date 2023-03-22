import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = 'DIORKGHD34';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> locaisVisitados = <
      String>{}; // Set é uma coleção que funciona como uma lista, porém não vai repetir Argumentos iguais.
  Viagem({required this.locomocao});
  Map<String, double> registroPreco =
      {}; // A Coleçãop/Dicionário(chave/valor) Map registra informação em relação a outra. (E posso por dynamic no lugar de double para por qualquer coisa como por exemplo(muito caro) no lugar do valor).

  int _totalLocaisVisitados =
      0; //Colocar UNDERLINE para deixar Privado no início da variável

  int get consultartotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQntdd) {
    _totalLocaisVisitados = novaQntdd;
  }

  void escolherTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('vou de carro');
        break;
      case Transporte.bike:
        print('vou de bike');
        break;
      case Transporte.bus:
        print('Vou de busão');
        break;
      case Transporte.aviao:
        print('partiu DB guysss!!');
        break;
      default:
        print('Nem eras marreco');
        break;
    }
  }

  void visitar(String localV) {
    locaisVisitados.add(localV);
    _totalLocaisVisitados += 1;
  }

  void registroPrecoVisita(String local, dynamic preco) {
    registroPreco['sampa'] = 1200.00;
    print(registroPreco); // print todos os elementos chave e valor.
  }

  printCodigo() {
    print(codigoTrabalho);
  }
}
