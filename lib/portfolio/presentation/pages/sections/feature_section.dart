import 'package:cria_ride/core/constants/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        children: [
          SizedBox(height: 20.sp),
          Text(
            readyToRide,
            style: TextStyle(
              fontSize: 26.sp,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 20.sp),
          Text(
            textAlign: TextAlign.center,
            readyToRideText,
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
                SizedBox(height: 20.sp),
                //Image
                Image.asset(
                  'assets/ready_to_ride.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                SizedBox(height: 20.sp),
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
                            ),
                            child: const Icon(FontAwesomeIcons.locationArrow),
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
                            ),
                            child: const Icon(FontAwesomeIcons.lock),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            securePayment,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            securePaymentText,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30.sp,
                      width: 30.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: const Icon(FontAwesomeIcons.car),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      rideOption,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      rideOptionText,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black87,
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
