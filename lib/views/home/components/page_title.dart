import 'package:flutter/material.dart';
import '../../../constants/string_constants.dart';

class PageTitle extends StatelessWidget {
  final String mainText;
  final String boldText;

  const PageTitle({
    Key? key,
    required this.mainText,
    required this.boldText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headline4,
        children: [
          TextSpan(text: mainText),
          TextSpan(
              text: boldText,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
