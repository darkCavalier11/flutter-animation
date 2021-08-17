import 'package:flutter/material.dart';

class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({Key? key}) : super(key: key);

  @override
  _AnimatedFooState createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  bool isYellow = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          height: 200,
          width: 200,
          color: isYellow ? Colors.yellow : Colors.red,
          duration: Duration(seconds: 1),
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: () {
            setState(() {
              isYellow = !isYellow;
            });
          },
          child: Text(
            'Animate',
            style: TextStyle(fontFamily: 'Gilroy', fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
