import 'package:flutter/material.dart';

import 'custom_botton_text_model.dart';

class CustomBottonText extends StatelessWidget {
  final DetailsCustomBotton detailsCustomBotton;
  const CustomBottonText({Key? key, required this.detailsCustomBotton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 21, right: 21, top: 25, bottom: 20),
      decoration: BoxDecoration(
          color: Color(detailsCustomBotton.colorBotton),
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withAlpha(37),
              offset: const Offset(0, 3),
              blurRadius: 6,
            )
          ]),
      child: Text(
        detailsCustomBotton.textBotton,
        style: TextStyle(
            fontFamily: 'SF',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(detailsCustomBotton.colorText)),
      ),
    );
  }
}
