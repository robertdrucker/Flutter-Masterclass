import 'package:flutter/material.dart';
import 'package:coffee_card/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Coffee Id',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text('How I like my coffee...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          // The expanded widget takes up all available height, but
          // no more.  It also forces its child image to adjust to the contraint.
          Expanded(
            child: Image.asset(
              'assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              // place bottom center of the image at the bottom
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
