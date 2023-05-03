import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 19),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: const Color(0xffDFDFDF).withAlpha(50),
                offset: const Offset(0, 10),
                blurRadius: 30)
          ]),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: SvgPicture.asset(
              'assets/icons/Search.svg',
              fit: BoxFit.none,
            ),
            hintText: 'Search Books, Authors ',
            hintStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'SF',
              color: const Color(0xff212121).withAlpha(50),
            ),
            suffixIcon: SvgPicture.asset(
              'assets/icons/FillterSearch.svg',
              fit: BoxFit.none,
            )),
      ),
    );
  }
}
