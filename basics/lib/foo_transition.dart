import 'package:flutter/material.dart';

class FooTransition extends StatefulWidget {
  const FooTransition({Key? key}) : super(key: key);

  @override
  _FooTransitionState createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 15))
          ..repeat(); // repeating for infinity
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RotationTransition(
          turns: _animationController,
          child: Container(height: 200, width: 200, color: Colors.blue),
          alignment: Alignment.topLeft,
        ),
        TextButton(
          onPressed: () {
            if (_animationController.isAnimating) {
              _animationController.stop();
            } else
              _animationController.repeat();
          },
          child: Text('Toggle'),
        )
      ],
    );
  }
}
