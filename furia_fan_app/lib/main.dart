import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/profile_quiz_page.dart';
import 'pages/result_page.dart';
import 'pages/home_page.dart';
import 'pages/fan_ranking_page.dart';
import 'pages/social_feed_page.dart';

void main() {
  runApp(FuriaFanApp());
}

class FuriaFanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FURIA Fan Connect',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFF121212),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/quiz': (context) => ProfileQuizPage(),
        '/result': (context) => ResultPage(),
        '/home': (context) => HomePage(),
        '/ranking': (context) => FanRankingPage(),
        '/social': (context) => SocialFeedPage(),
      },
    );
  }
}