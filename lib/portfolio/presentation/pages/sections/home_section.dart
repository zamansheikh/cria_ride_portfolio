import 'package:cria_ride/core/constants/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.4,
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        tagline1,
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      Text(
                        tagline2,
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.sp),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse('https://flutter.dev');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        padding: EdgeInsets.all(10.sp),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.android,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10.sp),
                            Text(
                              'Donwload on\nGoogle Play',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.sp),
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse('https://flutter.dev');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        padding: EdgeInsets.all(10.sp),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.apple,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10.sp),
                            Text(
                              'Donwload on\nApp Store',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40.sp),
            Image.asset('assets/main.png', width: 300.sp),
          ],
        ),
      ),
    );
  }
}
