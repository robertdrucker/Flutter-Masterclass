import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  // runApp(const MaterialApp(home: Home()));
  runApp(const MaterialApp(home: Sandbox()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 100, color: Colors.red, child: Text('one')),
          Container(width: 200, color: Colors.green, child: Text('two')),
          Container(width: 300, color: Colors.blue, child: Text('three')),
        ],
      ),
    );
  }
}
