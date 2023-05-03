import 'package:book_share_app/Screens/Shared%20Widget/Paint%20Header%20Page/paint_header_page.dart';

import 'package:flutter/material.dart';

import '../../Shared Widget/Paint Header Page/paint_header_model.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        const PaintHeaderPage(
            customPaintForPage: CustomPaintForPage.paintForProfile),
        Padding(
          padding: const EdgeInsets.only(left: 36, top: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Amr Hady',
                style: TextStyle(
                    fontFamily: 'SF',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.only(right: 43, top: 20),
                height: 84,
                width: 84,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffBFBFC0),
                      offset: Offset(5, 5),
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/Amr Hady Image.png',
                  fit: BoxFit.none,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
