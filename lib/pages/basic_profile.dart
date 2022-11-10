// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class basicProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? purpose;
  int questionCount = 0;
  final Question = const [
    {
      'question': 'What will you use it for?',
      'answer1': 'Work',
      'answer2': 'Personal',
      'answer3': 'School',
    },
    {
      'question': 'what is your role?',
      'answer1': 'Marketing',
      'answer2': 'Developer',
      'answer3': 'Designer',
    },
  ];
  int nextQuestion() {
    questionCount++;
    purpose = "";
    if (questionCount >= Question.length) {
      print("Completed, Navigating");
      Navigator.of(context).pushNamed("/startUpPage");
      return 1;
    }
    setState(() {});
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "<  Back",
                ),
                Text(
                  "Skip  >",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/logo.png",
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Let's create your profile",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (Question[questionCount]['question']).toString(),
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: RadioListTile(
                    title: Text(
                      (Question[questionCount]['answer1']).toString(),
                    ),
                    value: "Work",
                    groupValue: purpose,
                    onChanged: (value) {
                      setState(() {
                        purpose = value.toString();
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: RadioListTile(
                    title: Text(
                      (Question[questionCount]['answer2']).toString(),
                    ),
                    value: "Personal",
                    groupValue: purpose,
                    onChanged: (value) {
                      setState(() {
                        purpose = value.toString();
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: RadioListTile(
                    title:
                        Text((Question[questionCount]['answer3']).toString()),
                    value: "School",
                    groupValue: purpose,
                    onChanged: (value) {
                      setState(() {
                        purpose = value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 270,
                    height: 45,
                    //  onPressed: () => {Navigator.of(ctxt).pushNamed("/signLoginpage")},
                    child: ElevatedButton(
                      onPressed: () => {nextQuestion()},
                      child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
