import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/string_constants.dart';
import '../two_side_rounded_button.dart';

class ButtonsRow extends StatelessWidget {
  final VoidCallback onTap;

  const ButtonsRow({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 205,
      child: Container(
        height: 40,
        width: 202,
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 101,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(StringConstants.details),
              ),
            ),
            const Expanded(
              child: TwoSideRoundedButton(),
            )
          ],
        ),
      ),
    );
  }
}
