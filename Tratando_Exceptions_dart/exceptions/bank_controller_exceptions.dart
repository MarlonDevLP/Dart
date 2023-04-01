class SenderIdInvalidExceptions implements Exception {
  String idSender;
  SenderIdInvalidExceptions({required this.idSender});
}

class ReceiverIdInvalidExceptions implements Exception {
  String idReceiver;
  ReceiverIdInvalidExceptions({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmoutException implements Exception {
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmoutException(
      {required this.idSender,
      required this.amount,
      required this.senderBalance});
}
