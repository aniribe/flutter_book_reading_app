import 'package:book_reading/constants/app_images.dart';
import 'package:book_reading/constants/string_constants.dart';
import 'package:book_reading/util/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../data/data_lists.dart';
import '../../widgets/best_of_the_day_card/best_of_the_day_card.dart';
import '../../widgets/continue_reading_card/continue_reading_card.dart';
import 'components/page_title.dart';
import 'components/reading_today_books_section.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.mainPageBackground),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(screenHeight(context) * 0.1),
                const PageTitle(
                  mainText: StringConstants.whatReading,
                  boldText: StringConstants.today,
                ),
                verticalSpace(30),
                ReadingTodayBooksSection(
                  onTap: model.redirectToDetails,
                  readingTodayBooks: readingTodayBooks,
                ),
                const PageTitle(
                  mainText: StringConstants.best,
                  boldText: StringConstants.day,
                ),
                const BestOfTheDayCard(),
                const PageTitle(
                  mainText: StringConstants.continueReading,
                  boldText: StringConstants.reading,
                ),
                verticalSpace(20),
                const ContinueReadingCard(),
                verticalSpace(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
