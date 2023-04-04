import 'dart:io';

//implementar o Timing!

class TimeQuestions{
  String hour = 'Que horas sao?';
  String day = 'Que dia e hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String SimpleBOT = 'SimpleBOT:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime(){
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('horas') ||
        question.contains('Horas') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('ano') ||
        question.contains('Ano')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {

    if (question == hour) {

      String _botAnswer = SimpleBOT + ' Opa! são : ${date.hour} horas e ${date.minute} minutos e ${date.second}';
      print(_botAnswer);
    } else if (question == day) {

      String _botAnswer = SimpleBOT + ' Opa! hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {

      String _botAnswer = SimpleBOT + ' Opa! estamos em : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {

      String _botQuestion =
          SimpleBOT + ' Não entendi, você quer saber das horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {

        String _botAnswer = SimpleBOT + ' Beleza, são : ${date.hour} horas e ${date.minute} minutos e ${date.second}!';
        print(_botAnswer);
      } else {

        String _botAnswer = SimpleBOT + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {

      String _botQuestion =
          SimpleBOT + ' Não entendi, você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {

        String _botAnswer = SimpleBOT + ' Beleza, hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {

        String _botAnswer = SimpleBOT + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {

      String _botQuestion =
          SimpleBOT + ' Não entendi, você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {

        String _botAnswer = SimpleBOT +
              'Estamos em : ${date.year}';
        print(_botAnswer);
      } else {

        String _botAnswer = SimpleBOT + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}