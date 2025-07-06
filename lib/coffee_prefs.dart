import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('3'),
            Container(
              color: Colors.blue,
              child: SizedBox(width: 50, height: 12),
            ),
          ],
        ),
        Row(children: [Text('Sugars: '), Text('3'), SizedBox(width: 50)]),
      ],
    );
  }
}
