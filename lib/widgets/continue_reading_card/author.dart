import 'package:flutter/cupertino.dart';

import '../../constants/app_colors.dart';
import '../../constants/string_constants.dart';

class Author extends StatelessWidget {
  const Author({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringConstants.gary,
      style: TextStyle(color: AppColors.lightBlack),
    );
  }
}
