import 'package:flutter/cupertino.dart';
import '../../../constants/app_images.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        right: 0,
        child: Image.asset(
          AppImages.book3,
          width: 150,
        ));
  }
}
