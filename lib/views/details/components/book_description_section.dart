import 'package:flutter/cupertino.dart';
import '../../../constants/string_constants.dart';
import '../../../util/ui_helpers.dart';
import '../../../widgets/rounded_button.dart';
import 'book_description.dart';

class BookDescriptionSection extends StatelessWidget {
  const BookDescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const BookDescription(),
          verticalSpace(5),
          RoundedButton(
            onPressed: () {},
            text: StringConstants.read,
            verticalPadding: 10,
            fontSize: 13,
          ),
        ],
      ),
    );
  }
}
