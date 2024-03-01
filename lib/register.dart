import 'dart:io';
import 'package:aplikasi_mbank/auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisPage(),
    );
  }
}

class RegisPage extends StatefulWidget {
  @override
  _RegisPageState createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(top: 20),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => RegisPage()));
          },
          icon: Image.asset('Assets/Logos.png'),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(top: 20),
            icon: const Icon(Icons.translate),
            onPressed: () => exit(0),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        // decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(padding: EdgeInsets.only(right: 50)),
            const Text(
              'Create an account and enjoy the benefits we provide for you',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.only(
                  top: 30, bottom: 5, left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AuthorPage()));
                },
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: const Size(400, 53),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10), // Add spacing between icon and text
                    Text(
                      'Register With Gmail',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // other
            Container(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              // decoration:
              // BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Text(
                "other",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300),
              ),
            ),
            // Sign in
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.only(
                  top: 20, bottom: 5, left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AuthorPage()));
                },
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromRGBO(5, 190, 113, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: const Size(400, 53),
                ),
                child: const Text(
                  'Register with Email',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
