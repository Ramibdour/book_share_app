import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Repository/introdaction_page_repository.dart';
import 'package:book_share_app/Screens/Sign%20In/sign_in.dart';
import 'package:book_share_app/constant.dart';
import 'package:page_transition/page_transition.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/introddaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Provider.of<IntrodactionPageRepository>(context, listen: false)
        .getStateShowIntrodactionPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<IntrodactionPageRepository>(
      builder: (context, introdactionPageRepository, child) {
        return AnimatedSplashScreen(
          duration: 1500,
          nextScreen: introdactionPageRepository.showIntrodactionPageBefor
              ? SignIn()
              : const IntrodactionScreen(),
          splash: Column(
            children: [
              Image.asset(
                'assets/images/SplashIcon.png',
              ),
              const Text(
                'Book Share',
                style: TextStyle(
                    fontFamily: 'INK', fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          backgroundColor: primerColor,
          splashIconSize: 150.0,
          splashTransition: SplashTransition.rotationTransition,
          pageTransitionType: PageTransitionType.rightToLeftWithFade,
        );
      },
    ));
  }
}
