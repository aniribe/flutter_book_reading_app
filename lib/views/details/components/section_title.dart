import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headline4,
        children: const [
          TextSpan(text: 'You might also '),
          TextSpan(
              text: 'like...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
