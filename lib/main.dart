import 'package:flutter/material.dart';

// the const keyword is used to create a compile-time constant.
// It tells the Dart compiler that the value will not change at runtime.
// Anything with a const in front of it can be reused rather than rebuilt from scratch.

/*
void main() {
runApp(const MaterialApp(home: Text("Hello, ninjas!")));
}
*/

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Coffee Id"),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: const Text('Hello, ninjas!'),
      ),
    ),
  );
}
