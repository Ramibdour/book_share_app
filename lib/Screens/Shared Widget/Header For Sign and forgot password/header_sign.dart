import 'package:book_share_app/Screens/Shared%20Widget/Paint%20Header%20Page/paint_header_page.dart';

import 'package:flutter/material.dart';

import '../Paint Header Page/paint_header_model.dart';

class HeaderSign extends StatelessWidget {
  final String namePage;
  const HeaderSign({
    Key? key,
    required this.namePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PaintHeaderPage(
          customPaintForPage: CustomPaintForPage.paintForWelcomPage,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26, top: 46),
          child: Row(
            children: [
              Image.asset(
                'assets/images/SplashIcon.png',
                width: 33,
                height: 52,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                namePage,
                style: const TextStyle(
                    fontFamily: 'SF',
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
