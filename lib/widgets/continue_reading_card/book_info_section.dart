import 'package:flutter/cupertino.dart';
import '../../util/ui_helpers.dart';
import '../best_of_the_day_card/author.dart';
import '../best_of_the_day_card/book_image.dart';
import '../best_of_the_day_card/book_name.dart';
import 'chapter_section.dart';

class BookInfoSection extends StatelessWidget {
  const BookInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BookName(),
                  const Author(),
                  verticalSpace(5),
                  const ChapterSection(),
                  verticalSpace(5),
                ],
              ),
            ),
            const BookImage(),
          ],
        ),
      ),
    );
  }
}
