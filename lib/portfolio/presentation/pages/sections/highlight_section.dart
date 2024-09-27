import 'package:cria_ride/core/constants/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighlightSection extends StatefulWidget {
  const HighlightSection({super.key});

  @override
  State<HighlightSection> createState() => _HighlightSectionState();
}

class _HighlightSectionState extends State<HighlightSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        children: [
          SizedBox(height: 20.sp),
          Text(
            rideEasyWork,
            style: TextStyle(
              fontSize: 26.sp,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 20.sp),
          Text(
            textAlign: TextAlign.center,
            embraceWork,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 20.sp),
          //Option Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.blue,
                            ),
                            child: Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            realTimeTracking,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            trackYourRide,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.blue,
                            ),
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            rideOption,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            rideOptionText,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.sp),
                //Image
                Image.asset(
                  'assets/smartphoneMock.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),

                //Option Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.blue,
                            ),
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            realTimeTracking,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            trackYourRide,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.blue,
                            ),
                            child: Text(
                              "4",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            rideOption,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            rideOptionText,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
