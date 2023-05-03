import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Model/profile_model.dart';

class RowField extends StatelessWidget {
  const RowField({
    Key? key,
    required this.detailsRowField,
  }) : super(key: key);
  final DetailsRowField detailsRowField;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(detailsRowField.iconField, fit: BoxFit.none),
          const SizedBox(
            width: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              detailsRowField.text,
              style: const TextStyle(
                  fontFamily: 'SF',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xff000000)),
            ),
          ),
        ],
      ),
    );
  }
}
