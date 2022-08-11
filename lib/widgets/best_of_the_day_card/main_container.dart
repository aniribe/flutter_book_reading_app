import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../util/ui_helpers.dart';
import 'author.dart';
import 'book_description_section.dart';
import 'book_name.dart';
import 'card_subtitle_section.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(
          left: 24,
          top: 24,
          right: screenWidth(context) * 0.35,
        ),
        height: 185,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.lightBlack.withOpacity(0.1),
          borderRadius: BorderRadius.circular(29),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardSubtitleSection(),
            verticalSpace(5),
            const BookName(),
            verticalSpace(5),
            const Author(),
            verticalSpace(10),
            const BookDescriptionSection(),
          ],
        ),
      ),
    );
  }
}
