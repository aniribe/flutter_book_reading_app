import 'package:flutter/material.dart';
import 'book_image.dart';
import 'book_name_section.dart';
import 'buttons_row.dart';
import 'like_section.dart';
import 'main_white_card.dart';

class ReadingListCard extends StatelessWidget {
  final String bookImage;
  final String score;
  final String bookName;
  final String author;
  final VoidCallback onTap;

  const ReadingListCard({
    Key? key,
    required this.bookImage,
    required this.score,
    required this.bookName,
    required this.author,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 202,
      margin: const EdgeInsets.only(
        left: 24,
        bottom: 40,
      ),
      child: Stack(
        children: [
          const MainWhiteCard(),
          BookImage(image: bookImage),
          LikeSection(score: score),
          BookNameSection(
            bookName: bookName,
            author: author,
          ),
          ButtonsRow(onTap: onTap),
        ],
      ),
    );
  }
}
