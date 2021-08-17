import 'package:basics/animatedFoo.dart';
import 'package:basics/animated_builder_ex.dart';
import 'package:basics/foo_transition.dart';
import 'package:basics/tween_animation_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isYellow = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(elevation: 0),
        body: ListView(
          children: [
            AnimatedFoo(),
            TweenAnimationEx(),
            SizedBox(height: 100),
            FooTransition(),
            AnimatedBuilderEx(),
          ],
        ),
      ),
    );
  }
}
