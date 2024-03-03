import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_drawer.dart';
import 'package:responsive_ui/views/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: const HomeViewBody(),
    );
  }
}
