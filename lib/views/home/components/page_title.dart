import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/string_constants.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headline4,
          children: const [
            TextSpan(text: StringConstants.whatReading),
            TextSpan(
                text: StringConstants.today,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
