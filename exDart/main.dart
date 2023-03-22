import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemJaneiro = Viagem(locomocao: Transporte.aviao);
  print(viagemJaneiro.consultartotalLocaisVisitados);
  viagemJaneiro.visitar('Museu');
  print(viagemJaneiro.consultartotalLocaisVisitados);
  viagemJaneiro.alterarLocaisVisitados = 10;
  print(viagemJaneiro.consultartotalLocaisVisitados);
  // print(locaisVisitados.first); // informa o primeiro elemento da COLEÇÃO.
  // print(locaisVisitados.last); // informa o último elemento da COLEÇÃO.
  // print(locaisVisitados.isEmpty); // informa se a COLEÇÃO  está vazia retornando false.
  // print(locaisVisitados.isNotEmpty); // informa se a COLEÇÃO mão está vazia retornando true.
  // print(locaisVisitados.length); // informa o tamanho da COLEÇÃO.
  // print(locaisVisitados.contains('maragua')); //CONTAINS verifica na lista ou na Coleção(Set) se existe o elemento pelo nome.
  // //Nas Opções de  métodos depois do ponto(.) clique em ctrl espaço(barra) que mostrará a documentação daquele método(pra ele serve)
  // print(locaisVisitados);

  //print(registroPreco['RJ']); // na chamada utiliza-se a chave(RJ no exemplo) para printar o valor adcionado ali me cima
  //se procurar uma chave que não existe ele retorna null
}
