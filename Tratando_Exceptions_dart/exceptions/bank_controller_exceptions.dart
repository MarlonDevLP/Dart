class SenderIdInvalidExceptions implements Exception {
  String idSender;
  SenderIdInvalidExceptions({required this.idSender});
}

class ReceiverIdInvalidExceptions implements Exception {}

class SenderNotAuthenticatedException implements Exception {}

class SenderBalanceLowerThanAmoutException implements Exception {}
