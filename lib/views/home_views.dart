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
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    //-32 because of padding widget in layoutBuilder which layoutBuilder give max
    //width which its parent gives
    return MediaQuery.of(context).size.width -32 < 900
        ? AppBar(
            leading: GestureDetector(
              onTap: () {
                // scaffoldKey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          )
        : null;
  }
}

// class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppbar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains) {
//       if (constrains.maxWidth < 900) {
//         return AppBar(
//           leading: GestureDetector(
//             onTap: () {
//               // scaffoldKey.currentState!.openDrawer();
//             },
//             child: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//           backgroundColor: Colors.black,
//         );
//       } else {
//         return const SizedBox();
//       }
//     });
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(58);
// }
