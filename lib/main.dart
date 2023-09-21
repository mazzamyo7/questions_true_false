import 'package:flutter/material.dart';
import 'app_brian.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

AppBrian appbrian = AppBrian();

void main() {
  runApp(examApp());
}

class examApp extends StatelessWidget {
  const examApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Exam'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: exam_page(),
        ),
      ),
    );
  }
}

class exam_page extends StatefulWidget {
  const exam_page({super.key});

  @override
  State<exam_page> createState() => _exam_pageState();
}

class _exam_pageState extends State<exam_page> {
  bool bb = true;
  bool cr_an = true;
  List<Widget> answer = [];
  void check_true_or_false(bool b) {
    cr_an = appbrian.getAnswer();
    setState(() {
      if (cr_an == b) {
        print("Question True");
        answer.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.blue,
            ),
          ),
        );
      } else {
        answer.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
          ),
        );
        print("Question false");
      }
      if (appbrian.isfinish() == true) {
        Alert(
          context: context,
          title: "Finish the exam",
          desc: "All questions have been answered.",
        ).show();
        appbrian.reset();
        answer = [];
      } else {
        appbrian.length();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answer,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appbrian.getIamge()),
              SizedBox(
                height: 20.0,
              ),
              Text(
                appbrian.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, color: Colors.black87),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent, // background color
                foregroundColor: Colors.white, // text color
              ),
              child: Text(
                'true',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              onPressed: () {
                check_true_or_false(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // background color
                foregroundColor: Colors.white, // text color
              ),
              child: Text(
                'Flase',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              onPressed: () {
                check_true_or_false(false);
              },
            ),
          ),
        ),
      ],
    );
  }
}
