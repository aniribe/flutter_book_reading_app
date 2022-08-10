import 'package:flutter/material.dart';
import '../../../constants/app_images.dart';
import '../../../util/ui_helpers.dart';
import 'book_description_section.dart';
import 'book_rating_section.dart';
import 'book_title.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookTitle(),
              verticalSpace(5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  BookDescriptionSection(),
                  BookRatingSection(),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          AppImages.book1,
          height: 200,
        )
      ],
    );
  }
}
