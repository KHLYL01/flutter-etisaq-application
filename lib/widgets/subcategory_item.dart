import 'package:etisaq/core/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../core/constant/app_colors.dart';
import 'custom_elevated_button.dart';

class SubcategoryItem extends StatelessWidget {
  const SubcategoryItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.rate,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String imagePath;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 2.1,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Color(0x807F90AD),
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: context.height / 4.2,
            width: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: context.height / 120),
          Row(
            children: [
              RatingBar(
                initialRating: rate,
                allowHalfRating: true,
                itemSize: 20,
                ratingWidget: RatingWidget(
                  full: const Icon(Icons.star_rate_rounded,
                      color: Color(0xFFF6BE1B)),
                  half: const Icon(Icons.star_rate_rounded,
                      color: Color(0xFFF6BE1B)),
                  empty: Icon(Icons.star_border_rounded,
                      color: Colors.grey.shade300),
                ),
                onRatingUpdate: (value) {},
                ignoreGestures: true,
                // starOffColor: Colors.white,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                '$rate',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  fontFamily: 'Alexandria',
                ),
              )
            ],
          ).paddingSymmetricWidth32(),
          SizedBox(height: context.height / 80),
          ListTile(
            title: Text(
              title,
              style: const TextStyle(
                color: AppColors.mainColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
                fontFamily: 'Alexandria',
              ),
            ),
            subtitle: Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: 'Alexandria',
              ),
            ),
          ),
          SizedBox(height: context.height / 40),
          const Divider(
            color: Color(0xFFD9D9D9),
            height: 1,
          ),
          Container(
            child: CustomElevatedButton(
              title: 'التسجيل في الدورة',
              onPressed: () {},
              backgroundColor: Colors.white,
              foregroundColor: AppColors.mainColor,
              radius: 4,
            ).paddingSymmetricWidth32().center(),
          ).expanded(flex: 1)
        ],
      ),
    ).paddingSymmetricWidth14();
  }
}
