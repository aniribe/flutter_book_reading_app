import 'package:flutter/cupertino.dart';
import '../../../data/data_lists.dart';
import '../../../util/ui_helpers.dart';
import 'chapter_card.dart';

class ChapterListSection extends StatelessWidget {
  const ChapterListSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight(context) * 0.3,
      height: screenHeight(context) * 0.55,
      width: screenWidth(context),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: booksChapters.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ChapterCard(
            name: booksChapters[index].chapterName,
            chapterNumber: booksChapters[index].chapterNumber,
            tag: booksChapters[index].tag,
            press: () {},
          ),
        ),
      ),
    );
  }
}
