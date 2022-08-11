import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/string_constants.dart';
import '../../../util/ui_helpers.dart';
import '../../../widgets/book_rating.dart';
import '../../../widgets/rounded_button.dart';

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
              Text(
                'Crushing &',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Influence',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              verticalSpace(5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.lightBlack,
                          ),
                        ),
                        verticalSpace(5),
                        RoundedButton(
                          onPressed: () {},
                          text: StringConstants.read,
                          verticalPadding: 10,
                          fontSize: 13,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: AppColors.lightBlack,
                          )),
                      const BookRating(score: '4.9'),
                    ],
                  ),
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
