import 'package:book_share_app/Screens/Introdaction%20Screen/Model/introdaction_screen_model.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Repository/introdaction_page_repository.dart';
import 'package:book_share_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomIntrodactionPage extends StatelessWidget {
  final DetailsIntrodactionPage detailsIntrodactionPage;
  const CustomIntrodactionPage({
    Key? key,
    required this.detailsIntrodactionPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer<IntrodactionPageRepository>(
                  builder: (context, introdactionPageRepository, child) {
                    return GestureDetector(
                      child: const Text('Skip',
                          style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 16,
                              color: Color(0xff969696))),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/signIn');
                        introdactionPageRepository.showIntrodactionPage();
                      },
                    );
                  },
                )
              ],
            ),
            const SizedBox(
              height: 82,
            ),
            Image.asset(
              detailsIntrodactionPage.image,
              width: 346.71,
              height: 238.56,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(detailsIntrodactionPage.descriptionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'SF', fontSize: 20, color: Color(0xff17191D))),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
