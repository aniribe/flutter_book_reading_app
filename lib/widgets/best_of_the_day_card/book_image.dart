import 'package:flutter/cupertino.dart';
import '../../constants/app_images.dart';
import '../../util/ui_helpers.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Image.asset(
        AppImages.book3,
        width: screenWidth(context) * 0.37,
      ),
    );
  }
}
