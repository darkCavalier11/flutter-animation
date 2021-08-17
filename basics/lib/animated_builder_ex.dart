import 'package:flutter/material.dart';

class AnimatedBuilderEx extends StatefulWidget {
  const AnimatedBuilderEx({Key? key}) : super(key: key);

  @override
  _AnimatedBuilderExState createState() => _AnimatedBuilderExState();
}

class _AnimatedBuilderExState extends State<AnimatedBuilderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation =
      Tween<double>(begin: 1, end: 0.8).animate(_animationController);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      reverseDuration: Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, _) {
          return Transform.scale(
            scale: _animation.value,
            child: Container(height: 200, width: 200, color: Colors.amber),
          );
        });
  }
}
