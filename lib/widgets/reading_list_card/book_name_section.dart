import 'package:flutter/cupertino.dart';
import '../../constants/app_colors.dart';

class BookNameSection extends StatelessWidget {
  final String bookName;
  final String author;

  const BookNameSection({
    Key? key,
    required this.author,
    required this.bookName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 160,
        child: Container(
          height: 45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                      style: const TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: bookName),
                        TextSpan(
                            text: author,
                            style: const TextStyle(
                              color: AppColors.lightBlack,
                            )),
                      ]),
                ),
              ),
              // const Spacer(),
            ],
          ),
        ));
  }
}
