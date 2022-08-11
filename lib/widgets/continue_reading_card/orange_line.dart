import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';
import '../../util/ui_helpers.dart';

class OrangeLine extends StatelessWidget {
  const OrangeLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: screenWidth(context) * 0.65,
      decoration: BoxDecoration(
        color: AppColors.progressIndicator,
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
