import 'package:book_reading/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_images.dart';
import '../constants/string_constants.dart';
import '../util/ui_helpers.dart';
import 'book_rating.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
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
                  const Text(
                    StringConstants.newYork,
                    style: TextStyle(
                      fontSize: 9,
                      color: AppColors.black,
                    ),
                  ),
                  verticalSpace(5),
                  Text(
                    StringConstants.howToWin,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  verticalSpace(5),
                  const Text(
                    StringConstants.gary,
                    style: TextStyle(color: AppColors.lightBlack),
                  ),
                  verticalSpace(10),
                  Row(
                    children: [
                      const BookRating(score: '4.9'),
                      horizontalSpace(10),
                      const Expanded(
                        child: Text(
                          StringConstants.whenTheEarth,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.lightBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              AppImages.book3,
              width: screenWidth(context) * 0.37,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: screenWidth(context) * 0.3,
                child: const TwoSideRoundedButton(),
              ))
        ],
      ),
    );
  }
}
