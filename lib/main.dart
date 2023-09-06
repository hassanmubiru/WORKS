import 'package:flutter/material.dart';

import 'execrise.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Check Field TextInput ',
          ),
        ),
        body: const Center(
          child: TextFieldClass(),
        ),
      ),
    );
  }
}