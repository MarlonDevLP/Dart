class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createdAt;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated, this.createdAt}); //:
  //assert(name.isNotEmpty, "O nome na pode ser uma String vazia."), Testes em tempo de desenvolvimento
  //assert(balance >= 0, "O Saldo não pode ser negativo");

  editBalance({required value}) {
    balance = balance + value;
  }
}
