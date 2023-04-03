void main() {
  // Future myFuture = Future(() {
  //   print('Going back to the Future!');
  //   return 21;
  // }).then((value) => print('The value is $value'));

  Future<int> funcMyFutere() async {
    print("I have Function in the Future");
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 77;
  }

  // funcMyFutere()
  //     .then((value) => print("My function is value: $value"))
  //     .onError((error, stackTrace) => print("An error occured"))
  //     .whenComplete(() => print("The Future is Over"));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try{
      if (a > b) {
        throw Exception();
      }
      print("I have a functional function");
      await Future.delayed(Duration(seconds: 4));
      return 44;

    }catch (e) {
      print("An error occured: $e");
      return 44;

    }finally {
      print("The Future is finilly is Over");
    }
  }
  myFutureErrorFunc(2, 1).then((value) => print("The value is: $value"));
  print('Done with main');
}
