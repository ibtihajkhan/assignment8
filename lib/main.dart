import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:uptodo/intro/manage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UpTodo",
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: "assets/logo.jpg",
          backgroundColor: Colors.black,
          duration: 2500,
          splashTransition: SplashTransition.slideTransition,
          splashIconSize: 500,
          nextScreen: const ManageView()),
    );
  }
}
