import 'dart:io';

import 'package:aplikasi_mbank/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Author Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthorPage(),
    );
  }
}

class AuthorPage extends StatefulWidget {
  @override
  _AuthorPageState createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> {
  String _securityCode = '';

  void _addNumber(String number) {
    setState(() {
      if (_securityCode.length < 4) {
        _securityCode += number;
      }
    });
  }

  void _removeNumber() {
    setState(() {
      if (_securityCode.length > 0) {
        _securityCode = _securityCode.substring(0, _securityCode.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(top: 20),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Security Code',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.green), // Green color border
                    borderRadius: BorderRadius.circular(5), // Rounded border
                  ),
                  child: Center(
                    child: Text(
                      _securityCode.length > index ? _securityCode[index] : '',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(padding: EdgeInsets.only(top: 300)),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 3,
                mainAxisSpacing: .0,
                crossAxisSpacing: 5.0,
                children: List.generate(
                  10,
                  (index) => TextButton(
                    onPressed: () {
                      if (index < 9) {
                        _addNumber('${index + 1}');
                      } else {
                        _addNumber('0');
                      }
                    },
                    child: Text(
                      '${index != 9 ? index + 1 : 0}',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black), // Font color is default black
                    ),
                  ),
                )..add(
                    TextButton(
                      onPressed: _removeNumber,
                      child: Icon(Icons.backspace,
                          color:
                              Colors.black), // White color for backspace icon
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
