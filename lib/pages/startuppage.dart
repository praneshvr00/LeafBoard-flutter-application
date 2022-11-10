// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:leafboard/pages/signin_login_page.dart';

class startUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _StartupContainer(context),
    );
  }
}

Widget _StartupContainer(ctxt) {
  return Container(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(100),
                  ),
                  child: Image.asset(
                    'images/startscreen.png',
                    height: 270,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: new BorderRadius.circular(100.0),
                child: Image.asset('images/logo.png', height: 120, width: 120),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Leafboard",
            style: TextStyle(
                color: Colors.black, fontSize: 45, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "A platform built for a new way of working",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 80.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade600,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
            ),
            onPressed: () => {Navigator.of(ctxt).pushNamed("/signLoginpage")},
            child: Text("Get Started for Free  >"),
          )
        ],
      ),
    ),
  );
}


// Container(
//           child: ClipRRect(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(100),
//             ),
//             child: Image.asset('images/startscreen.png'),
//           ),
//         ),
//         Image.asset(
//           'images/logo1.png',
//           width: 120,
//           height: 120,
//         )