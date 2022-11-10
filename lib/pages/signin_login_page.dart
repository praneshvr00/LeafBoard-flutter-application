// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class signLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Logging();
  }
}

class Logging extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoggingState();
}

class _LoggingState extends State<Logging> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 40),
                    Container(
                      child: Text(
                        "Leafboard",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Work without limits",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Text(
                "Your email address",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      hintText: 'pranesh@gmail.com'),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Your password",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  obscureText: isVisible,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        !isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () => {
                        setState(() {
                          isVisible = !isVisible;
                        }),
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    hintText: 'minimum 8 characters',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 240,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/basicProfile")},
                    child: Text("Continue"),
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
              SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Text(
                    "or",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 240,
                  height: 45,
                  child: ElevatedButton.icon(
                    icon: Image.asset("images/google.png", width: 20, height: 20),
                    onPressed: () => {print("google")},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                    ),
                    label: Text(
                      "Sign up with Google",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 240,
                  height: 45,
                  child: ElevatedButton.icon(
                    
                    icon: Image.asset("images/apple.png", width: 20, height: 20),
                    onPressed: () => {print("apple")},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                    ),
                    label: Text(
                      "Sign up with Apple",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
