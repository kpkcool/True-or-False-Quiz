import 'package:kpkcool_quiz/question.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The past tense of FIND is FOUND.',true),
    Question('DOZEN is equivalent to 20.',false),
    Question('There are one thousand years in a CENTURY.', false),
    Question('Bananas are curved because they grow upwards towards the sun', true),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }

  bool isFinished(){
    if(_questionNumber >= _questionBank.length - 1){
      return true;
    }else{
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}

