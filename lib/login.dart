import 'package:aplikasi_mbank/auth.dart';
import 'package:aplikasi_mbank/register.dart';
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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(top: 20),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AuthorPage()));
          },
          icon: Image.asset('Assets/Logos.png'),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(top: 20),
            icon: const Icon(Icons.translate),
            onPressed: () => RegisPage(),
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
              'Welcome',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(padding: EdgeInsets.only(right: 50)),
            const Text(
              'Enjoy all the features that make it easy for you to manage your finances',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 50.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email / Username',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                const Text('Remember me'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    // Handle Forgot Password button press
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.only(
                  top: 100, bottom: 5, left: 20, right: 20),
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
                  'Sign In',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.only(
                  top: 10, bottom: 5, left: 20, right: 20),
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
                      'Sign in With Gmail',
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
            Container(
              padding: const EdgeInsets.only(
                top: 150,
              ),
              alignment: Alignment.center,
              child: GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisPage()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
