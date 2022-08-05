import 'package:book_reading/constants/app_colors.dart';
import 'package:book_reading/views/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        textTheme:
            Theme.of(context).textTheme.apply(displayColor: AppColors.black),
      ),
      home: const WelcomeScreenView(),
    );
  }
}
