import 'package:flutter/cupertino.dart';

import '../../constants/app_images.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.book1,
      width: 55,
    );
  }
}
