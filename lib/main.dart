import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQueryTest());
}

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Hallo world'),),
      ),
    );
  }
}