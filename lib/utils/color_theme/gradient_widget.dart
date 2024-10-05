import 'package:flutter/material.dart';

// use this widget for the background color of the application
class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({required this.child, super.key});
// set the background color of the application
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          stops: [0.0, 0.0, 1.0],
          colors: [
            Color.fromARGB(54, 119, 7, 97),
            Color.fromARGB(255, 37, 1, 27),
            Colors.black,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: child,
    );
  }
}
