import 'package:book_reading/util/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'components/book_info_section.dart';
import 'components/chapter_list_section.dart';
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
                    height: screenHeight(context),
                  ),
                  const BookInfoSection(),
                  const ChapterListSection(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
