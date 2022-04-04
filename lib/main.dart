import 'dart:ffi';
import 'package:airplane/ui/pages/BonusPage.dart';
import 'package:airplane/ui/pages/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:airplane/ui/pages/SplashPage.dart';
import 'package:airplane/ui/pages/GetStartedPage.dart';
import 'package:airplane/ui/pages/SignUpPage.dart';

void main() => runApp(const MyApp());

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
        "/bonus": (context) => const BonusPage(),
<<<<<<< HEAD
        "/main": (context) => const MainPage(),
=======
>>>>>>> ac316729d5c9fe43a3c834b5224fd1d38c374ca1
      },
    );
  }
}
