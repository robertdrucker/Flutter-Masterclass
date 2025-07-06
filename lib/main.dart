import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

// sandbox 1
class Sandbox1 extends StatelessWidget {
  const Sandbox1({super.key});

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
          Container(width: 100, color: Colors.red, child: const Text('one')),
          Container(width: 200, color: Colors.green, child: const Text('two')),
          Container(width: 300, color: Colors.blue, child: const Text('three')),
        ],
      ),
    );
  }
}

// sandbox 2
class Sandbox2 extends StatelessWidget {
  const Sandbox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 100, color: Colors.red, child: const Text('one')),
          Container(height: 200, color: Colors.green, child: const Text('two')),
          Container(
            height: 300,
            color: Colors.blue,
            child: const Text('three'),
          ),
        ],
      ),
    );
  }
}
