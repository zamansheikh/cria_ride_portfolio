import 'package:cria_ride/core/constants/app_const.dart';
import 'package:cria_ride/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitRequestSection extends StatefulWidget {
  const SubmitRequestSection({super.key});

  @override
  State<SubmitRequestSection> createState() => _SubmitRequestSectionState();
}

class _SubmitRequestSectionState extends State<SubmitRequestSection> {
  // Define the list of options for Country and Type
  final List<String> countries = [
    "Select Country",
    "Australia",
    "Bangladesh",
    "Canada",
    "USA",
    "Singapore",
    "Dubai",
    "Other"
  ];

  final List<String> types = [
    "Select Type",
    "Rider",
    "Driver",
    "Both",
  ];

  // Variables to hold selected values
  String selectedCountry = "Select Country";
  String selectedType = "Select Type";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        children: [
          Text(
            formTitle,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            formSubtitle,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 20.sp),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(170, 239, 223, 223),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.sp),
                  child: Column(
                    children: [
                      Text(
                        'Join Us',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
                          hintText: 'Enter your full name',
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      TextFormField(
                        onTapOutside: (event) {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number',
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      // Country Dropdown
                      DropdownButtonFormField<String>(
                        value: selectedCountry,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Country',
                        ),
                        items: countries.map((String country) {
                          return DropdownMenuItem<String>(
                            value: country,
                            child: Text(country),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCountry = newValue!;
                          });
                        },
                      ),
                      SizedBox(height: 10.sp),
                      // Type Dropdown
                      DropdownButtonFormField<String>(
                        value: selectedType,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Type',
                        ),
                        items: types.map((String type) {
                          return DropdownMenuItem<String>(
                            value: type,
                            child: Text(type),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedType = newValue!;
                          });
                        },
                      ),
                      SizedBox(height: 10.sp),
                      ElevatedButton(
                        onPressed: () {
                          fToast(context, message: "Not implemented yet");
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
