import 'package:book_share_app/Screens/Introdaction%20Screen/Model/introdaction_screen_model.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Componant/custom_introdaction_page.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Repository/introdaction_page_repository.dart';
import 'package:book_share_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdIntrodactionPage extends StatelessWidget {
  const ThirdIntrodactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomIntrodactionPage(
              detailsIntrodactionPage: DetailsIntrodactionPage(
                  'assets/images/ImageIntrodactionThirdPage.png',
                  'Buy And Sell Books With Us'),
            ),
            Consumer<IntrodactionPageRepository>(
              builder: (context, introdactionPageRepository, child) {
                return GestureDetector(
                  child: Container(
                    margin: size.height > 700
                        ? const EdgeInsets.only(
                            top: 75,
                          )
                        : const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    width: 184,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primerColor),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontFamily: 'SF',
                          fontSize: 20,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/signIn');
                    introdactionPageRepository.showIntrodactionPage();
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
