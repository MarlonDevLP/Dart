void stackStart() {
  //Testes com Exceptions e (catch) no Debugging com pilhas de execução//
  print("Started Main");
  functionOne();
  print("Finish Main");
}
void functionOne() {
  print("Started F01");
  try {
    functionTwo(); //Tratandondo excetions em " ordem de especializações de empilhamento " de exception//
    // } on FormatException catch (e) {
    //   print("Há um erro de conversão de dados, que é: " /*$e*/);
    //   print(e.message);
    //   print(e.source);
    //   print(e.offset);
    //   print(e.toString());
    // } on HttpException catch (h) {
    //   print(h.toString());
    //   print(h.message);
    // } on IOException catch (i) {
    //   print("Uma IoException foi encontrada");
    //   print(i.toString());
    //   print("Finish F01");
    // } on Exception catch (c) { //é a mais generalista para encontrar excessões//
    //   print(c.toString());
  } catch (excepition, stackTrace) {
    print(excepition);
    print(stackTrace);
    rethrow; // rethrow vai continuar a pilha pra quem está abaixo na pilha de execução, mas vai qubrar o código na ultima da pilha se não tiver tratamento para a exception
  } finally {
    //finally independentemente do erro do código ele vai fazer a chamada da instrução que está nele
    print('Chegou no Finally');
  }
  print("Finished F01");
}
void functionTwo() {
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse('Not a Number');
  }
  print("Finished F02");
}
