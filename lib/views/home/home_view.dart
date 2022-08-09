import 'package:book_reading/constants/app_colors.dart';
import 'package:book_reading/constants/app_images.dart';
import 'package:book_reading/constants/string_constants.dart';
import 'package:book_reading/util/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/best_of_the_day_card.dart';
import '../../widgets/reading_list_card/reading_list_card.dart';
import 'components/page_title.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
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
                    const PageTitle(),
                    verticalSpace(30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ReadingListCard(
                            bookImage: AppImages.book1,
                            score: '4.9',
                            bookName: StringConstants.crushing,
                            author: StringConstants.gary,
                            onTap: model.redirectToDetails,
                          ),
                          ReadingListCard(
                            bookImage: AppImages.book2,
                            score: '4.8',
                            bookName: StringConstants.topTen,
                            author: StringConstants.herman,
                            onTap: model.redirectToDetails,
                          ),
                          horizontalSpace(30),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: const [
                                TextSpan(text: StringConstants.best),
                                TextSpan(
                                    text: StringConstants.day,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          const BestOfTheDayCard(),
                          RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.headline5,
                                children: const [
                                  TextSpan(text: 'Continue '),
                                  TextSpan(
                                      text: 'reading...',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                ]),
                          ),
                          verticalSpace(20),
                          Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(38.5),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 33,
                                    color: AppColors.shadowColor,
                                  ),
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Crushing & Influence',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const Text(
                                                  StringConstants.gary,
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.lightBlack),
                                                ),
                                                const Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    'Chapter 7 of 10',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          AppColors.lightBlack,
                                                    ),
                                                  ),
                                                ),
                                                verticalSpace(5),
                                              ],
                                            ),
                                          ),
                                          Image.asset(
                                            AppImages.book1,
                                            width: 55,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 7,
                                    width: screenWidth(context) * 0.65,
                                    decoration: BoxDecoration(
                                      color: AppColors.progressIndicator,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          verticalSpace(40),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
