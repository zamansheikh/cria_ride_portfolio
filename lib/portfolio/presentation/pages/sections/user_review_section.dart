import 'package:cria_ride/core/constants/app_const.dart';
import 'package:cria_ride/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserReviewSection extends StatelessWidget {
  final PageController pageController;
  const UserReviewSection({super.key, required this.pageController});

  final List<Map<String, dynamic>> reviews = const [
    {
      "name": "John D",
      "title": "Director, Producer",
      "review": "Fast and convenient. My go-to ride-hailing app!",
      "rating": 4.0,
      "profilePic":
          "https://via.placeholder.com/50", // Replace with actual image URLs
    },
    {
      "name": "Emily R",
      "title": "Director, Producer",
      "review": "Friendly drivers and easy booking process.",
      "rating": 4.5,
      "profilePic":
          "https://via.placeholder.com/50", // Replace with actual image URLs
    },
    {
      "name": "Zaman Sheikh",
      "title": "Dev at Decoders Family",
      "review": "Cria team is awesome. .",
      "rating": 5.0,
      "profilePic":
          "https://avatars.githubusercontent.com/u/66895637?v=4", // Replace with actual image URLs
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            userReviewTitle,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.sp),
          Text(
            userReviewSubtitle,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.sp),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Divider(color: Colors.grey, thickness: 1.sp),
          ),

          SizedBox(height: 20.sp),
          // Review List
          SizedBox(
            height: 250.sp,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                final review = reviews[index];
                return ReviewCard(
                  name: review['name'],
                  title: review['title'],
                  review: review['review'],
                  rating: review['rating'],
                  profilePic: review['profilePic'],
                );
              },
            ),
          ),

          // View all reviews button
          ElevatedButton(
            onPressed: () => fToast(
              context,
              message: "This Feature is not available yet",
            ),
            child: Text(
              "View All Reviews",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16.sp,
              ),
            ),
          ),

          SizedBox(height: 20.sp),
          IconButton(
            onPressed: () {
              if (pageController.hasClients) {
                pageController.animateToPage(
                  5,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
            icon: const Icon(Icons.arrow_downward_rounded),
          )
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String title;
  final String review;
  final double rating;
  final String profilePic;

  const ReviewCard({
    super.key,
    required this.name,
    required this.title,
    required this.review,
    required this.rating,
    required this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.sp),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.format_quote,
              size: 40.sp,
              color: Colors.blue,
            ),
            Text(
              review,
              style: TextStyle(fontSize: 16.sp, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 8.sp),
            // Rating bar for user review
            RatingBarIndicator(
              rating: rating,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20.sp,
              direction: Axis.horizontal,
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.redAccent, thickness: 0.5),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profilePic),
                  radius: 25.sp,
                ),
                SizedBox(width: 12.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
