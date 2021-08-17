import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimationEx extends StatelessWidget {
  const TweenAnimationEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: pi),
      duration: Duration(seconds: 1),
      builder: (context, double value, _) {
        return Transform.rotate(
          angle: value,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        );
      },
    );
  }
}
