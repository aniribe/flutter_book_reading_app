import 'package:flutter/cupertino.dart';

class BookImage extends StatelessWidget {
  final String image;

  const BookImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 150,
    );
  }
}
