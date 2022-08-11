import 'package:flutter/cupertino.dart';

class BookName extends StatelessWidget {
  const BookName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Crushing & Influence',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
