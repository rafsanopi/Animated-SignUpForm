import 'package:animated_signup_form/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              hoverColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              fillColor: Colors.white,
              filled: true),
          textButtonTheme: TextButtonThemeData(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                minimumSize: const Size(88, 48),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black),
          ),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xffe9eff3)),
      home: const Home(),
    );
  }
}
