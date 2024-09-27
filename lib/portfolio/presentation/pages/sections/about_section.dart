import 'package:cria_ride/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150.sp,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/about_banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Divider(color: Colors.grey, thickness: 1.sp),
              ),
              SizedBox(height: 20.sp),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/Cria.png',
                    width: 60,
                  ),
                  Text(
                    "The Quick Brown Fox Jumps over the lazy dog",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => fToast(
                          context,
                          message: "This Feature is not available yet",
                        ),
                        icon: Icon(FontAwesomeIcons.facebook, size: 25.sp),
                      ),
                      IconButton(
                        onPressed: () => fToast(
                          context,
                          message: "This Feature is not available yet",
                        ),
                        icon: Icon(FontAwesomeIcons.instagram, size: 25.sp),
                      ),
                      IconButton(
                        onPressed: () => fToast(
                          context,
                          message: "This Feature is not available yet",
                        ),
                        icon: Icon(FontAwesomeIcons.twitter, size: 25.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),
                  Text(
                    "Company Info",
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 10.sp),
                  Text("About Us",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      )),
                  GestureDetector(
                    onTap: () => fToast(
                      context,
                      message: "This Feature is not available yet",
                    ),
                    child: Text("Career",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  GestureDetector(
                    onTap: () => fToast(
                      context,
                      message: "This Feature is not available yet",
                    ),
                    child: Text("We Are hiring",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  GestureDetector(
                    onTap: () => fToast(
                      context,
                      message: "This Feature is not available yet",
                    ),
                    child: Text("Blog",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    "Features",
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  GestureDetector(
                    onTap: () => fToast(
                      context,
                      message: "This Feature is not available yet",
                    ),
                    child: Text("Business Marketing",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  GestureDetector(
                    onTap: () => fToast(
                      context,
                      message: "This Feature is not available yet",
                    ),
                    child: Text("User Analytics",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  GestureDetector(
                    onTap: () => fToast(
                      context,
                      message: "This Feature is not available yet",
                    ),
                    child: Text("Live Chat",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      fToast(
                        context,
                        message: "This Feature is not available yet",
                      );
                    },
                    child: Text("Unlimited Support",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 60.sp,
          padding: EdgeInsets.all(16.sp),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(5.sp),
          ),
          child: Text(
            "Made with ❤️ by Cria | All Rights Reserved",
            style: TextStyle(fontSize: 18.sp),
          ),
        ),
      ],
    );
  }
}
