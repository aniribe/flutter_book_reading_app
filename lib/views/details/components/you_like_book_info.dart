import 'package:flutter/cupertino.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/string_constants.dart';
import '../../../widgets/book_rating.dart';
import '../../../widgets/rounded_button.dart';
import 'you_like_book_title.dart';

class YouLikeBookInfo extends StatelessWidget {
  const YouLikeBookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 160,
        padding: const EdgeInsets.only(left: 24, top: 24, right: 150),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          color: AppColors.lightBeigeColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const YouLikeBookTitle(),
            const Text(
              StringConstants.gary,
              style: TextStyle(
                color: AppColors.lightBlack,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BookRating(score: '4.9'),
                RoundedButton(
                  text: StringConstants.read,
                  onPressed: () {},
                  verticalPadding: 10,
                  width: 120,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
