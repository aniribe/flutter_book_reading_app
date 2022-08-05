import 'package:flutter/material.dart';
import '../../../constants/string_constants.dart';

class SloganSection extends StatelessWidget {
  const SloganSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.displaySmall,
        children: const [
          TextSpan(
            text: StringConstants.flaminPart,
          ),
          TextSpan(
            text: StringConstants.goPart,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
