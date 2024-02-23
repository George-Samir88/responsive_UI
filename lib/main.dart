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
    // var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        //use LayoutBuilder to query which platform is being used
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return const MobileLayout();
          } else {
            return const DesktopLayout();
          }
        }),
      ),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                x = index;
                setState(() {});
              },
              child: Container(
                color: Colors.yellow,
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(fontSize: 36),
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: Center(
          child: Container(
            color: Colors.red,
            child: Text(
              '${x + 1}',
              style: const TextStyle(fontSize: 32),
            ),
          ),
        ))
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsView(index: index)));
        },
        child: Container(
          color: Colors.yellow,
          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Text(
            '${index + 1}',
            style: const TextStyle(fontSize: 36),
          ),
        ),
      ),
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '${index + 1}',
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
