import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';
import 'book_info_section.dart';
import 'orange_line.dart';

class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 33,
              color: AppColors.shadowColor,
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(38.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BookInfoSection(),
            OrangeLine(),
          ],
        ),
      ),
    );
  }
}
