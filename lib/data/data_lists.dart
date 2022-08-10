import '../constants/app_images.dart';
import '../constants/string_constants.dart';
import '../model/chapter_info.dart';
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

List<ChapterInfo> booksChapters = [
  ChapterInfo(
    chapterName: 'Money',
    chapterNumber: 1,
    tag: 'Life is about change',
  ),
  ChapterInfo(
    chapterName: 'Power',
    chapterNumber: 2,
    tag: 'Everything loves power',
  ),
  ChapterInfo(
    chapterName: 'Influence',
    chapterNumber: 3,
    tag: 'Influence easily like never before',
  ),
  ChapterInfo(
    chapterName: "Win",
    chapterNumber: 4,
    tag: "Winning is what matters",
  ),
];
