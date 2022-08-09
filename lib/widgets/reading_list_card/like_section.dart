import 'package:flutter/material.dart';
import '../book_rating.dart';

class LikeSection extends StatelessWidget {
  final String score;

  const LikeSection({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      right: 10,
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          BookRating(score: score),
        ],
      ),
    );
  }
}
