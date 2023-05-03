import 'package:book_share_app/Screens/Choose%20The%20Topics/choose_topics.dart';
import 'package:book_share_app/Screens/Discover/Repository/item_topic_repository.dart';
import 'package:book_share_app/Screens/Discover/Repository/our_top_picks_repository.dart';
import 'package:book_share_app/Screens/Forgot%20Password/forgot_password.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Repository/introdaction_page_repository.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/introddaction_screen.dart';
import 'package:book_share_app/Screens/Sign%20In/sign_in.dart';
import 'package:book_share_app/Screens/Sign%20Up/sign_up.dart';
import 'package:book_share_app/Screens/Main%20Page/main_page.dart';

import 'package:book_share_app/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Choose The Topics/Repository/choose_topics_repository.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChooseTopicsRepository()),
      ChangeNotifierProvider(create: (context) => OurTopPicksRepository()),
      ChangeNotifierProvider(create: (context) => ItemTopicRepository()),
      ChangeNotifierProvider(create: (context) => IntrodactionPageRepository()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/introdaction': (context) => const IntrodactionScreen(),
        '/signIn': (context) => SignIn(),
        '/signUp': (context) => SignUp(),
        '/forgotPassword': (context) => ForgotPassword(),
        '/home': (context) => const MainPage(),
        '/chooseTopics': (context) => const ChooseTopics(),
      },
    );
  }
}
