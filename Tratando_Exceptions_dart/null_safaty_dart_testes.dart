import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  //se o objeto não for inicializado ele automaticamente recebe null
  Account? myAccount = nAccount(name: "Marlon", balance: 55555, isAuthenticated: true);

//Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.runtimeType);

  //Teste forçado que não funciona
  //print(myAccount.balance);
  //print(myAccount.createdAt.day);

  //com esse bang(!) depois do myAccount ele faz uma Conversão direta: Má prática
  //print(myAccount!.balance);
  //print(myAccount.createdAt!.day);

  //esse if é um dos meios seguros para testar se myAccount não é null
  if (myAccount != null) {
    print(myAccount.balance);
    if (myAccount.createdAt != null) {
      //Faz o teste se não for null usa a bang (!) no final de createdAt
      print(myAccount.createdAt!.day);
    }
  } else {
      print("Conta Nula");
  }
  //Safe call(Chamada Segura)
  print(myAccount.balance); //esse print é um dos meios seguros para testar se myAccount não é null.
  //operador ternário
  print(myAccount != null ? myAccount.balance : "Conta Nula");
}

void main() {
  testingNullSafety();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  //Account accounTeste = Account(name: "", balance: -200, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 600);
    // Observando resultado
    if (result) {
      //print("Transação feita com Sucesso");
    }
  } on SenderIdInvalidExceptions catch (e) {
    print(e);
    //print("O ID ${e.idSender} não é válido man!!!");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    //print("O ID destinatário '${e.idReceiver}' não pode receber um tranferência.");
    
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    //print("O ID destinatário '${e.idSender}' não está auntenticado.");
  } on SenderBalanceLowerThanAmoutException catch (e) {
    print(e);
    //print("O ID '${e.idSender}' está tentando fazer uma transferência de '${e.amount}'Reais, mas seu Saldo é de '${e.senderBalance}'Reais");
    
  } on Exception {
    print("Algo está dando erro.");
  }
}
// void main() {
//   throw FormatException(); // lança o próprio objeto e retorna o toString dele(type) não vai ler mais nada doque estiver abaixo
// }
