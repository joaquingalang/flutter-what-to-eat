import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: FoodPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  Random random = Random();
  int foodNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3E1),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'What To Eat',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFF3CD8E),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              foodNumber = random.nextInt(6) + 1;
            });
          },
          child: Image.asset('images/food$foodNumber.png', width: 250),
        ),
      ),
    );
  }
}
