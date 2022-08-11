import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';

class ChapterSection extends StatelessWidget {
  const ChapterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomRight,
      child: Text(
        'Chapter 7 of 10',
        style: TextStyle(
          fontSize: 10,
          color: AppColors.lightBlack,
        ),
      ),
    );
  }
}
