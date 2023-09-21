import 'question.dart';

class AppBrian {
  int _number_quastion = 0;
  List<Question> question_Group = [
    Question(
        text: 'The number of planets in the solar system is eight?',
        image: 'images/image-1.jpg',
        answer: true),
    Question(text: 'Cats pets?', image: 'images/image-2.jpg', answer: true),
    Question(
        text: 'Is China located on the continent of Africa?',
        image: 'images/image-3.jpg',
        answer: false),
    Question(
        text: 'The Earth is flat, not spherical',
        image: 'images/image-4.jpg',
        answer: false),
    Question(
        text: 'Can humans survive without eating meat?',
        image: 'images/image-5.jpg',
        answer: true),
    Question(
        text:
            'The sun revolves around the earth? And the Earth revolves around the moon?',
        image: 'images/image-6.jpg',
        answer: false),
    Question(
        text: 'Do animals not feel pain?',
        image: 'images/image-7.jpg',
        answer: false)
  ];
  void length() {
    if (_number_quastion < question_Group.length - 1) {
      _number_quastion++;
    }
  }

  String getText() {
    return question_Group[_number_quastion].q_text;
  }

  String getIamge() {
    return question_Group[_number_quastion].q_image;
  }

  bool getAnswer() {
    return question_Group[_number_quastion].q_answer;
  }

  bool isfinish() {
    if (_number_quastion >= question_Group.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _number_quastion = 0;
  }
}
