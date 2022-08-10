import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headline5,
        children: [
          const TextSpan(text: 'Crushing & '),
          TextSpan(
            text: 'Influence',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
