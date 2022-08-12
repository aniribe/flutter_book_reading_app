import 'package:book_reading/views/details/components/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../util/ui_helpers.dart';
import 'book_image.dart';
import 'you_like_book_info.dart';

class YouLikeSection extends StatelessWidget {
  const YouLikeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SectionTitle(),
          verticalSpace(20),
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
              ),
              const YouLikeBookInfo(),
              const BookImage()
            ],
          ),
        ],
      ),
    );
  }
}
