import 'dart:io';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

//SEMPRE QUE FOR PEGAR DADOS EXTERNOS HÁ NECESSIDADE DE UTILIZAR (async/await)
void main() async {
  String simpleBOT = 'SimpleBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o SimpleBOT, aguarde..--');
  //delay simulando dados externos
  await BotClock().clock(2);

  print('SimpleBOT:\n Oi :) \n Como posso ajudar?');
  //delay simulando dados externos
  await BotClock().clock(1);
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    //delay simulando dados externos
    BotClock().clock(3);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(simpleBOT + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.

      //delay simulando dados externos
      await BotClock().clock(5);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      //delay simulando dados externos
      await BotClock().clock(3);
      print(simpleBOT +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(simpleBOT + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando SimpleBOT--');
}
