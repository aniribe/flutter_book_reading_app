import 'package:flutter/cupertino.dart';
import '../../../constants/app_colors.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.',
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 10,
        color: AppColors.lightBlack,
      ),
    );
  }
}
