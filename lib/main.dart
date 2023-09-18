import 'package:flutter/material.dart';

import 'package:helper/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 229, 255, 0),
          Color.fromARGB(255, 43, 53, 0),
        ),
      ),
    ),
  );
}
