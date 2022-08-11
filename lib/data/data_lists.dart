import '../constants/app_images.dart';
import '../constants/string_constants.dart';
import '../model/reading_book.dart';

List<ReadingBook> readingTodayBooks = [
  ReadingBook(
    bookImage: AppImages.book1,
    score: '4.9',
    bookName: StringConstants.crushing,
    author: StringConstants.gary,
  ),
  ReadingBook(
    bookImage: AppImages.book2,
    score: '4.8',
    bookName: StringConstants.topTen,
    author: StringConstants.herman,
  ),
];
