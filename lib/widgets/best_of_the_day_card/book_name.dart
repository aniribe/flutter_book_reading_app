import 'package:flutter/material.dart';
import '../../constants/string_constants.dart';

class BookName extends StatelessWidget {
  const BookName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.howToWin,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
