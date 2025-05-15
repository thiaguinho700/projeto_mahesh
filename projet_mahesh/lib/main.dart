import 'package:flutter/material.dart';
import 'package:projet_mahesh/CadastroScreen.dart';
import 'package:projet_mahesh/HomeScreen.dart';
import 'package:projet_mahesh/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Main(),
  ));
}


class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}