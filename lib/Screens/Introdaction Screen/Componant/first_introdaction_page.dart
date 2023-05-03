import 'package:book_share_app/Screens/Introdaction%20Screen/Model/introdaction_screen_model.dart';
import 'package:book_share_app/Screens/Introdaction%20Screen/Componant/custom_introdaction_page.dart';
import 'package:flutter/material.dart';

class FirstIntrodactionPage extends StatelessWidget {
  const FirstIntrodactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomIntrodactionPage(
        detailsIntrodactionPage: DetailsIntrodactionPage(
            'assets/images/ImageIntrodactionFirstPage.png',
            'Share Your Favourite Books\nWith Your Family And Friends'),
      ),
    );
  }
}
