import 'package:flutter/material.dart';
import 'package:airplane/ui/pages/SplashPage.dart';
import 'package:airplane/ui/pages/GetStartedPage.dart';
import 'package:airplane/ui/pages/SignUpPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashPage(),
        "/get-started": (context) => const GetStartedPage(),
        "/sign-up": (context) => const SignUpPage(),
      },
    );
  }
}