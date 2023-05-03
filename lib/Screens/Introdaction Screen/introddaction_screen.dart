import 'package:book_share_app/Screens/Introdaction%20Screen/Componant/first_introdaction_page.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Componant/second_introdaction_page.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Componant/third_introdaction_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntrodactionScreen extends StatelessWidget {
  const IntrodactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          rawPages: const [
            FirstIntrodactionPage(),
            SecondIntrodactionPage(),
            ThirdIntrodactionPage()
          ],
          initialPage: 0,
          showDoneButton: false,
          showNextButton: false,
          dotsDecorator: DotsDecorator(
            color: Colors.white,
            shape: const CircleBorder(
                side: BorderSide(
              width: 1,
              color: Color(0xffFF6EA1),
            )),
            activeColor: const Color(0xffFF6EA1),
            size: const Size.square(13),
            activeSize: const Size.square(13),
            spacing: size.height > 700
                ? const EdgeInsets.only(bottom: 190, right: 10)
                : const EdgeInsets.only(right: 10, bottom: 50),
          ),
        ),
      ),
    );
  }
}
