import 'dart:io';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
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
      print("Transação feita com Sucesso");
    }
  } on SenderIdInvalidExceptions catch (e) {
    print("O ID ${e.idSender} não é válido man!!!");
  } on ReceiverIdInvalidExceptions catch (e) {
    print(
        "O ID destinatário '${e.idReceiver}' não pode receber um tranferência.");
  } on SenderNotAuthenticatedException catch (e) {
    print("O ID destinatário '${e.idSender}' não está auntenticado.");
  } on SenderBalanceLowerThanAmoutException catch (e) {
    print(
        "O ID '${e.idSender}' está tentando fazer uma transferência de '${e.amount}'Reais, mas seu Saldo é de '${e.senderBalance}'Reais");
  } on Exception  {
    print("Algo está dando erro.");
  }
}
// void main() {
//   throw FormatException(); // lança o próprio objeto e retorna o toString dele(type) não vai ler mais nada doque estiver abaixo
// }
