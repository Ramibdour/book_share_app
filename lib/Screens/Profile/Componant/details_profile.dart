import 'package:book_share_app/constant.dart';
import 'package:flutter/material.dart';

class DetailsProfile extends StatelessWidget {
  const DetailsProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              itemDetails('21', 'Books'),
              const SizedBox(
                width: 25,
              ),
              itemDetails('50k', 'Followers'),
              const SizedBox(
                width: 25,
              ),
              itemDetails('30', 'Following'),
            ],
          ),
          Container(
            height: 30,
            width: 100,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5, right: 30),
            decoration: BoxDecoration(
                color: primerColor,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff5ABD8C).withAlpha(62),
                      offset: const Offset(0, 5),
                      blurRadius: 15)
                ]),
            child: const Text(
              'Edit Profile',
              style: TextStyle(
                  fontFamily: 'SF',
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Column itemDetails(String num, String text) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(
              fontFamily: 'SF',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: const Color(0xff212121).withAlpha(50)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'SF',
              fontSize: 10,
              color: const Color(0xff212121).withAlpha(50)),
        )
      ],
    );
  }
}
