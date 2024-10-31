import 'package:flutter/material.dart';
import 'package:languege_learning/screens/home_page.dart';

void main() {
  runApp(TokoApp());
}

class TokoApp extends StatelessWidget {
  const TokoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(), 
    );
  }
}
