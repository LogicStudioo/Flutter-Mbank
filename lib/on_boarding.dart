import 'dart:io';

import 'package:aplikasi_mbank/login.dart';
import 'package:flutter/material.dart';

class Myboard extends StatelessWidget {
  const Myboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              padding: const EdgeInsets.only(top: 20),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Myboard()));
              },
              icon: Image.asset('Assets/Logos.png')),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(top: 20),
              icon: const Icon(Icons.translate),
              onPressed: () => exit(0),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.black)),
                width: 470,
                height: 400,
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  '../Assets/Card.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(15),
                  // decoration:
                  // BoxDecoration(border: Border.all(color: Colors.black)),
                  child: const Text(
                    "Choose as Needed",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  )),
              Container(
                padding: const EdgeInsets.only(left: 70, right: 70),
                // decoration:
                // BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Text(
                    'Choose the savings you want to open, we have lots of services according to what you need.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 150, bottom: 5, left: 20, right: 20),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(5, 190, 113, 1),
                        shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        minimumSize: const Size(343, 53)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      'Get Started',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
