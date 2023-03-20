void main() {
  String nome = 'Laranja';
  double peso = 10.2;
  String cor = 'verde';
  String sabor = 'doce';
  int diasDesdeColhida = 25;
  bool isMadura;

  Legumes leguminosa = Legumes('lele', 10.5, 'Verde', true);
  Fruta banana = Fruta('banana', 3.3, 'amarela', 'Doce', 20);
  FrutaSeca nozez = FrutaSeca('noz', 2.0, 'marrom', 'amarga', 12, 34);
  Citricas limao = Citricas('limão', 4.6, 'verde', 'Azedo', 17, 67);

  leguminosa.printAlimeto();

  banana.printAlimeto();

  nozez.printAlimeto();

  limao.printAlimeto();

  leguminosa.cozinhar(true);
  limao.refri(true);
  banana.separarIngredientes();
  nozez.fazerMasssa();

  // EX: CHAMANDO CLASE E MÉTODOS //Fruta fruta1 = Fruta(
  //     nome, peso, cor, sabor, diasDesdeColhida); //EXEMPLO DE CHAMADA DE CLASSE
  // fruta1.estamadura(30);
  // fruta1.printantoqualquermerda();
  // = (funcEstaMadurinha(diasDesdeColhida)); //sempre que tiver (is) com a variável é pra entender que será booleana
  //mostrarMadura(fruta, diasDesdeColhida, cor: 'lala');
  //funcQuanntosDiaasMadura(20, 'Laranjínea');
  //print('Está madura? $isMadura');
  //int diasParaMadura = funcQuanntosDiaasMadura(20);
  //print(diasParaMadura);
  // String toString(
  //     {required String fruta,
  //     required double peso,
  //     int diasDesdeColhida = 20,
  //     int diasParaMadura = 30,
  //     bool? isMadura}) {
  //   if (isMadura == null) {
  //     isMadura = diasDesdeColhida >= diasParaMadura;
  //   }
  //}
}

class Alimentos {
  String nome;
  double peso;
  String cor;
  Alimentos(this.nome, this.peso, this.cor);

  void printAlimeto() {
    print('Este(a) $nome pesa $peso gramas e é cor de $cor');
    print('');
    print('----------------------"""""----------------------');
    print('');
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMasssa();
  void assar();
}

class Legumes extends Alimentos implements Bolo {
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso,
            cor); //super é pra referenciar a classe superior que no caso é Alimentos SEMPRE NO FINAL DE CADA CONSTRUTOR
  void cozinhar(isPrecisaCozinhar) {
    if (isPrecisaCozinhar) {
      print('O $nome precisa ser cozido');
    } else {
      print('Não precisa ser cozido o $nome');
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMasssa() {
    // TODO: implement fazerMasssa
  }

  @override
  void separarIngredientes() {
    if (Legumes == isPrecisaCozinhar) {
      print('Esse $nome está preparado para o bolo');
    }
  }
}

class Citricas extends Fruta {
  double nivelAcidez;
  Citricas(nome, peso, cor, sabor, diasDesdeColhida, this.nivelAcidez)
      : super('$nome', peso, '$cor', '$sabor', diasDesdeColhida);
  void refri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refri de $nome man');
    }
  }
}

class FrutaSeca extends Fruta {
  double porcentagemDeOleo;
  FrutaSeca(nome, peso, cor, sabor, diasDesdeColhida, this.porcentagemDeOleo)
      : super('$nome', peso, '$cor', '$sabor', diasDesdeColhida);
  @override
  void fazerMasssa() {
    print('Tirar a casca da nóz');
    super.fazerMasssa();
  }
}

class Fruta extends Alimentos implements Bolo {
  String sabor;
  int diasDesdeColhida;
  bool? isMadura;

  Fruta(nome, peso, cor, this.sabor, this.diasDesdeColhida, {this.isMadura})
      : super('$nome', peso,
            '$cor'); //CONSTRUTOR PARA PEGAR INFOS DE FORA DA CLASSE.
  estamadura(int diasParaMadura) {
    isMadura = diasDesdeColhida >= diasParaMadura;
    print(
        'A sua $nome foi colhida a $diasDesdeColhida e precide de $diasParaMadura para ficar madura, ela tá madura? $isMadura');
  }

  @override
  void assar() {
    print('Vai demorar umas 2 horas tranquilinho pai');
  }

  @override
  void fazerMasssa() {
    print('bater os ingredientes no liquidificador');
  }

  @override
  void separarIngredientes() {
    print('Achar as $nome certas');
  }
}


//        PARÂMETROS
// 1 - Posicionais Ibrigatórios
// 2 - Nomeados Opcionais
// 3 - Parâmetros "Padrão"
// Modificador "required"]

//funcMostrFruta(String nome, double peso, int diasDesdeColhida, int diasPMadura,
//     bool madura) {
//   return "nome: $nome,\n"
//       "peso: $peso,\n"
//       "diasDesdeColhida: $diasDesdeColhida,\n"
//       "diasParaMadura: $diasPMadura,\n"
//       "isMadura: $madura,";
// }

// //funcQuanntosDiaasMadura(int diasD) {
//   int diasParaMadura = 30;
//   int quantosDiasFaltam = diasParaMadura - diasD;
//   if (quantosDiasFaltam >= 10) {
//     return true;
//   } else {
//     return;
//   }
// }

//void mostrarMadura(String nome, int diasC, {required String cor}) {
//   if (diasC > 10 && diasC <= 20) {
//     //print('A $nome, está madura e tem cor $cor');
//   } else {
//     //print('A $nome não está madura e tem cor $cor');
//   }
//   if (cor != null) {
//     //print('Esta $nome é $cor');
//   }
// }

// //bool funcEstaMadurinha(int dias) {
//   if (dias > 10 && dias <= 20) {
//     return true;
//     //print('Está madura essa bagaça');
//   } else {
//     return false;
//   }
// }
