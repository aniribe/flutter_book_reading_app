import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/string_constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double width;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 20,
          primary: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          fixedSize: Size.fromWidth(width),
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ));
  }
}
