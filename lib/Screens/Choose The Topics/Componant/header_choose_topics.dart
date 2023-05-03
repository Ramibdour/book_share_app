import 'package:book_share_app/Screens/Shared%20Widget/Paint%20Header%20Page/paint_header_page.dart';

import 'package:flutter/material.dart';

import '../../Shared Widget/Paint Header Page/paint_header_model.dart';

class HeaderChooseTopics extends StatelessWidget {
  const HeaderChooseTopics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: const [
        PaintHeaderPage(
            customPaintForPage: CustomPaintForPage.paintForWelcomPage),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 50),
          child: Text(
            'Choose the topics',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF',
              color: Color(0xffFFFFFF),
            ),
          ),
        )
      ],
    );
  }
}
