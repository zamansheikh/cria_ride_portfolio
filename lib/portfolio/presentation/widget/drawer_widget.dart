import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatefulWidget {
  final PageController pageController;
  const DrawerWidget({super.key, required this.pageController});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      shadowColor: Colors.grey,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            accountName: const Text("Cria Ride"),
            accountEmail: const Text("Easy ride solution"),
            currentAccountPicture: Image.asset('assets/Cria.png'),
            currentAccountPictureSize:  Size.square(100.sp),
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pop();
              if (widget.pageController.hasClients) {
                widget.pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          ListTile(
            title: const Text("Highlights"),
            onTap: () {
              Navigator.of(context).pop();
              if (widget.pageController.hasClients) {
                widget.pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          ListTile(
            title: const Text("Submit a request"),
            onTap: () {
              Navigator.of(context).pop();
              if (widget.pageController.hasClients) {
                widget.pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          ListTile(
            title: const Text("Features"),
            onTap: () {
              Navigator.of(context).pop();
              if (widget.pageController.hasClients) {
                widget.pageController.animateToPage(
                  3,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          ListTile(
            title: const Text("User Reviews"),
            onTap: () {
              Navigator.of(context).pop();
              if (widget.pageController.hasClients) {
                widget.pageController.animateToPage(
                  4,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          ListTile(
            title: const Text("About Us"),
            onTap: () {
              Navigator.of(context).pop();
              if (widget.pageController.hasClients) {
                widget.pageController.animateToPage(
                  5,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
