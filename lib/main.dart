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
        /*
        //use LayoutBuilder to query which platform is being used
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return const MobileLayout();
          } else {
            return const DesktopLayout();
          }
        }),
*/
        /* body: Column(
          children: [
            //with using expanded you let component to take all the available space
            //with using flexible you let component flexible, like this icon have height 300
            //the icon try to fit itself in 400px but if there is not enough space it would get smaller
            const Flexible(
                //with using fittedBox component fit in its allowed space which its parent (flexible) gives it
                child: FittedBox(child: Icon(Icons.ac_unit, size: 300))),
            Container(
              height: 150,
              color: Colors.red,
              child: const FittedBox(
                //icon can't exceed the default size with boxFit.scaleDown
                fit: BoxFit.scaleDown,
                child: Icon(Icons.abc),
              ),
            ),
            Container(
              height: 150,
              color: Colors.yellow,
              //with the use of fittedBox you also can make component get biggest not only get smaller
              child: const FittedBox(child: Icon(Icons.ac_unit)),
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
          ],
        ),*/
        /* body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
            itemCount: 4,
            itemBuilder: (context, index) {
              return const FittedBox(child: Icon(Icons.ac_unit));
            }),*/
        body: Align(
          alignment: Alignment.topCenter,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
          ),
        ),
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
