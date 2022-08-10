import 'package:flutter/cupertino.dart';
import '../../../constants/app_images.dart';
import '../../../util/ui_helpers.dart';
import 'book_info.dart';

class BookInfoSection extends StatelessWidget {
  const BookInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.background),
            fit: BoxFit.fitWidth,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            verticalSpace(screenHeight(context) * 0.1),
            const BookInfo(),
          ],
        ),
      ),
    );
  }
}
