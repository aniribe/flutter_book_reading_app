import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/book_rating.dart';

class BookRatingSection extends StatelessWidget {
  const BookRatingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: AppColors.lightBlack,
            )),
        const BookRating(score: '4.9'),
      ],
    );
  }
}
