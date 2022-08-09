import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';

class MainWhiteCard extends StatelessWidget {
  const MainWhiteCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 221,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(29),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 33,
                color: AppColors.shadowColor.withOpacity(0.8),
              ),
            ]),
      ),
    );
  }
}
