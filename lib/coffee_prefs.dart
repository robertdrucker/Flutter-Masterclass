import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  // createState() creates an instance of the state subclass,
  //  _CoffeePrefsState object, which holds the state and build logic.
  // The underscore _ makes it private to this file.
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

// State subclass definition
// This is the blueprint of what a state object for CoffeePrefs looks like.
// Holds two variables: strength and sugars — initially 1 each.
// These variables live inside the state object, not the widget
//  itself — because they change over time.
// Every time Flutter rebuilds CoffeePrefs, it simply calls the
//  current _CoffeePrefsState.build() with the new widget data.
class _CoffeePrefsState extends State<CoffeePrefs> {
  // strength and sugars are mutable; they change in response to
  //  user actions.
  int strength = 1;
  int sugars = 1;

  // State-modifying method
  void increaseStrength() {
    // setState() is used to:
    //  Mutate the internal state
    //  Notify Flutter to rebuild the widget tree where necessary
    //  Update the UI to reflect the latest state
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  // State-modifying method
  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                colorBlendMode: BlendMode.multiply,
                color: Colors.brown[100],
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),

            if (sugars == 0) const Text('None...'),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                colorBlendMode: BlendMode.multiply,
                color: Colors.brown[100],
              ),
            const Expanded(child: SizedBox()),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.brown),
              onPressed: increaseSugars,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
