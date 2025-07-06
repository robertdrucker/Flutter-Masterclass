import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Coffee Id'),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: const Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      // width: 200,
      // height: 200,
      padding: const EdgeInsets.all(20),
      // margin: const EdgeInsets.only(left: 50),
      margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      // child must be last
      child: const Text(
        'Hello, ninjas',
        style: TextStyle(
          fontSize: 18,
          letterSpacing: 4,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
