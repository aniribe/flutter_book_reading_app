import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../util/ui_helpers.dart';

class BookRating extends StatelessWidget {
  final String score;

  const BookRating({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              offset: Offset(3, 7),
              blurRadius: 20,
              color: AppColors.shadowColor,
            ),
          ]),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: AppColors.iconColor,
            size: 15,
          ),
          verticalSpace(9),
          Text(
            score,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
