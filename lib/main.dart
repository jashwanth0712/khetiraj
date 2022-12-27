import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../../utils/constants.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'khetiraj',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Text(
              "Welcome to Plat OS...!",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Text(
              "Let us help you to maintain your Farm",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
            inputField('Email', Icons.mail_outline_rounded),
            inputField('Password', Icons.vpn_key_outlined),
            inputField('Confirm Password', Icons.vpn_key_outlined),
            loginButton('Sign Up'),
            Text("Already have an Account?  Sign In"),
            orDivider(),
            logos(),
          ],
        ),
      ),
    );
  }
}

Widget inputField(String hint, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
    child: SizedBox(
      height: 50,
      child: Material(
        elevation: 8,
        shadowColor: Colors.black87,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            prefixIcon: Icon(iconData),
          ),
        ),
      ),
    ),
  );
}

Widget loginButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        shape: const StadiumBorder(),
        primary: kSecondaryColor,
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget orDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
    child: Row(
      children: [
        Flexible(
          child: Container(
            height: 1,
            color: kPrimaryColor,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'or',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Flexible(
          child: Container(
            height: 1,
            color: kPrimaryColor,
          ),
        ),
      ],
    ),
  );
}

Widget logos() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/facebook.png'),
        const SizedBox(width: 24),
        Image.asset('assets/images/google.png'),
      ],
    ),
  );
}

Widget forgotPassword() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    child: TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot Password?',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kSecondaryColor,
        ),
      ),
    ),
  );
}
