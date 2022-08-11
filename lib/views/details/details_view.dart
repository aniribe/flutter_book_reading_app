import 'package:book_reading/constants/app_colors.dart';
import 'package:book_reading/constants/app_images.dart';
import 'package:book_reading/constants/string_constants.dart';
import 'package:book_reading/util/ui_helpers.dart';
import 'package:book_reading/widgets/book_rating.dart';
import 'package:book_reading/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'components/book_info.dart';
import 'components/chapter_card.dart';
import 'details_viewmodel.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsViewModel>.reactive(
      viewModelBuilder: () => DetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: screenHeight(context) * 0.4,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.background),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          verticalSpace(screenHeight(context) * 0.1),
                          BookInfo(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: screenHeight(context) * 0.4 - 30),
                    child: Column(
                      children: [
                        ChapterCard(
                          name: 'Money',
                          chapterNumber: 1,
                          tag: 'Life is about change',
                          press: () {},
                        ),
                        ChapterCard(
                          name: 'Power',
                          chapterNumber: 2,
                          tag: 'Everything loves power',
                          press: () {},
                        ),
                        ChapterCard(
                          name: 'Influence',
                          chapterNumber: 3,
                          tag: 'Influence easily like never before',
                          press: () {},
                        ),
                        ChapterCard(
                          name: "Win",
                          chapterNumber: 4,
                          tag: "Winning is what matters",
                          press: () {},
                        ),
                        verticalSpace(10),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
