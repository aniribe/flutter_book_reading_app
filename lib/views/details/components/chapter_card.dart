import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../util/ui_helpers.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;

  const ChapterCard({
    Key? key,
    required this.name,
    required this.chapterNumber,
    required this.press,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      width: screenWidth(context) - 48,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Chapter $chapterNumber : $name \n',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: tag,
                    style: const TextStyle(
                      color: AppColors.lightBlack,
                    )),
              ],
            ),
          ),
          IconButton(
            onPressed: press,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
