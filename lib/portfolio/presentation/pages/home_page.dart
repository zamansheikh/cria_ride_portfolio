import 'package:cria_ride/portfolio/presentation/pages/sections/about_section.dart';
import 'package:cria_ride/portfolio/presentation/pages/sections/feature_section.dart';
import 'package:cria_ride/portfolio/presentation/pages/sections/home_section.dart';
import 'package:cria_ride/portfolio/presentation/pages/sections/submit_request_section.dart';
import 'package:cria_ride/portfolio/presentation/pages/sections/highlight_section.dart';
import 'package:cria_ride/portfolio/presentation/pages/sections/user_review_section.dart';
import 'package:cria_ride/portfolio/presentation/widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(
        pageController: pageController,
      ),
      appBar: AppBar(
        leadingWidth: 120.sp,
        leading: Image.asset('assets/Cria.png'),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                size: 30.sp,
                Icons.menu,
              ),
            );
          }),
          SizedBox(width: 10.sp),
        ],
      ),
      body: PageView(
        controller: pageController,
        scrollBehavior: const MaterialScrollBehavior(),
        scrollDirection: Axis.vertical,
        children: [
          const HomeSection(),
          const HighlightSection(),
          const SubmitRequestSection(),
          const FeatureSection(),
          UserReviewSection(pageController: pageController),
          const AboutSection(),
        ],
      ),
    );
  }
}
