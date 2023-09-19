class Question {
  late String q_text;
  late String q_image;
  late bool q_answer;

  late({required text, required image, required answer}) {
    q_text = text;
    q_image = image;
    q_answer = answer;
  }

  Question({required text, required image, required answer}) {
    q_text = text;
    q_image = image;
    q_answer = answer;
  }
}
