import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';
import '../../constants/string_constants.dart';
import '../../util/ui_helpers.dart';
import '../book_rating.dart';

class BookDescriptionSection extends StatelessWidget {
  const BookDescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
