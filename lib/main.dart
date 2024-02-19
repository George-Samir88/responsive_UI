import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQueryTest());
}

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //by using media query, you query the media(screen) of the device and save it in var to use it
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: height * 0.15,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: height * 0.15,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: height * 0.15,
              width: 200,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
