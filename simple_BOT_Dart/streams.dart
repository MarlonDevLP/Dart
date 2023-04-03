import 'dart:async';

//(async)fica aberto até a informação chagar
void main() async {
  //(async*) fica aberto por tempo indeterminado
  Stream myString(int interval, [int? maxCount]) async* {
    int x = 1;
    while (x != maxCount) {
      print("Counting: $x");
      await Future.delayed(Duration(seconds: interval));
      yield x++;
    }
    print("The Strem is Finished");
  }

  StreamSubscription mySubscribe = myString(2, 10).listen((event) {
    if (event.isEven) {
      print('The number is Evem');
    }
  }, onError: (e) {
    print("An Error This here $e");
  }, onDone: () {
    print('The Subscribe is gone.');
  });
  print("The main this Finished");
}
