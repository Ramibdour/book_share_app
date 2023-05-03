import 'package:book_share_app/Screens/Profile/Componant/row_field.dart';

import 'package:flutter/material.dart';

import '../Model/profile_model.dart';

class FieldSettings extends StatelessWidget {
  const FieldSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 31),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff000000).withAlpha(10),
                offset: const Offset(0, 2),
                blurRadius: 25)
          ]),
      child: Column(
        children: [
          RowField(
              detailsRowField:
                  DetailsRowField('assets/icons/Night Mode.svg', 'Night Mode')),
          const Divider(
            thickness: 2,
            color: Color(0xffFAFAFA),
          ),
          RowField(
              detailsRowField: DetailsRowField(
                  'assets/icons/Notification.svg', 'Notification')),
          const Divider(
            thickness: 2,
            color: Color(0xffFAFAFA),
          ),
          RowField(
              detailsRowField:
                  DetailsRowField('assets/icons/Language.svg', 'Language')),
          const Divider(
            thickness: 2,
            color: Color(0xffFAFAFA),
          ),
          RowField(
              detailsRowField:
                  DetailsRowField('assets/icons/Help.svg', 'Help')),
          const Divider(
            thickness: 2,
            color: Color(0xffFAFAFA),
          ),
          GestureDetector(
            child: RowField(
                detailsRowField:
                    DetailsRowField('assets/icons/Sign Out.svg', 'Sign Out')),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/signIn', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
