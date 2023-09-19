import 'question.dart';

class AppBrian {
  int _number_quastion = 0;
  List<Question> question_Group = [
    Question(text: 'عدد الكواكب في المجموعه الشمسية هو 8 كواكب',image: 'images/image-1.jpg',answer: true),
    Question(text: 'القطط حيوانات الالفية', image: 'images/image-2.jpg', answer: true),
    Question(text: 'الصين في افريقيا', image: 'images/image-3.jpg', answer: false),
    Question(text: 'الارض مسطحه و ليست كروية', image: 'images/image-4.jpg', answer: false),
     Question(text: 'باستطاعه الانسان البقاء على قيد الحياة بدون اكل اللحوم', image: 'images/image-5.jpg', answer: true),
    Question(text: 'الشمس تدور حول الارض و الارض تدور حول القمر', image: 'images/image-6.jpg', answer: false),
    Question(text: 'الحيوانات لا تشعر بالالم', image: 'images/image-7.jpg', answer: false)
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
