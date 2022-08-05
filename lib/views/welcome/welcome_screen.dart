import 'package:book_reading/constants/app_images.dart';
import 'package:book_reading/constants/string_constants.dart';
import 'package:book_reading/util/ui_helpers.dart';
import 'package:flutter/material.dart';
import '../../widgets/rounded_button.dart';
import 'components/slogan_section.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppImages.bitmap),
          fit: BoxFit.fill,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SloganSection(),
            verticalSpace(16),
            RoundedButton(
              text: StringConstants.startReading,
              fontSize: 16,
              width: screenWidth(context) * 0.6,
            ),
          ],
        ),
      ),
    );
  }
}
