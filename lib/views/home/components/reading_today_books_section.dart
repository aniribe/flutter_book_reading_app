import 'package:flutter/cupertino.dart';
import '../../../model/reading_book.dart';
import '../../../widgets/reading_list_card/reading_list_card.dart';

class ReadingTodayBooksSection extends StatelessWidget {
  final VoidCallback onTap;
  final List<ReadingBook> readingTodayBooks;

  const ReadingTodayBooksSection({
    Key? key,
    required this.onTap,
    required this.readingTodayBooks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      child: ListView.builder(
        itemCount: readingTodayBooks.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ReadingListCard(
          bookImage: readingTodayBooks[index].bookImage,
          score: readingTodayBooks[index].score,
          bookName: readingTodayBooks[index].bookName,
          author: readingTodayBooks[index].author,
          onTap: onTap,
        ),
      ),
    );
  }
}
