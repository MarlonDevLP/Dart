class SenderIdInvalidExceptions implements Exception {
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidExceptions({required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return "$report\nID Receiver: $idReceiver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender $idSender is no Authenticator";
  }
}

class SenderBalanceLowerThanAmoutException implements Exception {
  static const String report = "SenderBalanceLowerThanAmoutException";
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmoutException({
    required this.idSender,
    required this.senderBalance,
    required this.amount,
  });

  @override
  String toString() {
    return "$report\nID Sender '${idSender}'\nSender Balance: '${senderBalance}'Reais\nAmount: '${amount}'Reais";
  }
}
