import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';
import '../../constants/string_constants.dart';

class CardSubtitleSection extends StatelessWidget {
  const CardSubtitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringConstants.newYork,
      style: TextStyle(
        fontSize: 9,
        color: AppColors.black,
      ),
    );
  }
}
