import 'package:flutter/cupertino.dart';
import '../constants/app_colors.dart';
import '../constants/string_constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  const TwoSideRoundedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(29),
          bottomRight: Radius.circular(29),
        ),
      ),
      child: const Text(
        StringConstants.read,
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}
