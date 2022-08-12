import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double verticalPadding;
  final double horizontalPadding;
  final VoidCallback onPressed;
  final double width;

  const RoundedButton({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.verticalPadding = 16,
    this.horizontalPadding = 30,
    required this.onPressed,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 30,
              color: const Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
