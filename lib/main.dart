import 'package:flutter/material.dart';

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

class Home extends StatelessWidget {
  // constructor
  // key is used to identify the widget in the widget tree.
  // The key is inherited from the parent class (Stateless Widget)
  // super.key passes the key to the parent StatelessWidget constructor
  // The super.key syntax is essentially a shorthand for "take whatever
  //   key was passed to my constructor and immediately pass it to my
  //   parent's constructor."

  const Home({super.key});

  // traditional constructor syntax
  // const Home({Key? key}) : super(key: key);

  // Named parameters with the {Key? key} syntax
  // The Key type comes from Flutter's framework import (package:flutter/material.dart)
  // Initializer lists using the colon : to execute code before the constructor body
  // Parent constructor calls with super(key: key) to forward parameters
  // Const constructors for compile-time optimization

  //  when you write {Key? key}, you're using the Key type from the Flutter
  //    framework import, not inheriting it from StatelessWidget. The StatelessWidget
  //     class is just a middleman that forwards the key parameter to the Widget
  //     class where it's actually stored and used

  // Override the inherited version of this method.
  @override
  Widget build(BuildContext context) {
    // Inside the build method, we automatically get access to a BuildContext object
    //  as a parameter.
    // The BuildContext is a handle to the location of a widget in the widget tree.
    // You can think of it as the location of the widget and environment in which
    //  it is in within the application.
    // We sometimes need to pass this context object into certain functions so that
    //  those functions have access to that information also.

    // At the end of the build method, we return a widget or a widget tree
    return const Placeholder();
  }
}
