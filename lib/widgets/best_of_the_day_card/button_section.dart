import 'package:flutter/cupertino.dart';
import '../../util/ui_helpers.dart';
import '../two_side_rounded_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        right: 0,
        child: SizedBox(
          height: 40,
          width: screenWidth(context) * 0.3,
          child: const TwoSideRoundedButton(),
        ));
  }
}
