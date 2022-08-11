import 'package:flutter/material.dart';
import 'book_image.dart';
import 'button_section.dart';
import 'main_container.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: const [
          MainContainer(),
          BookImage(),
          ButtonSection(),
        ],
      ),
    );
  }
}
