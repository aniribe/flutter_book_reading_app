import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';

class YouLikeBookTitle extends StatelessWidget {
  const YouLikeBookTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'How To Win \nFriends & Influence',
      style: TextStyle(color: AppColors.black, fontSize: 18),
    );
  }
}
