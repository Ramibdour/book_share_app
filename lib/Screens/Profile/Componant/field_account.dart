import 'package:book_share_app/Screens/Profile/Componant/row_field.dart';

import 'package:flutter/material.dart';

import '../Model/profile_model.dart';

class FieldAccount extends StatelessWidget {
  const FieldAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
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
                  DetailsRowField('assets/icons/My  Cart.svg', 'My Cart')),
          const Divider(
            thickness: 2,
            color: Color(0xffFAFAFA),
          ),
          RowField(
              detailsRowField:
                  DetailsRowField('assets/icons/Purchases.svg', 'Purchases')),
          const Divider(
            thickness: 2,
            color: Color(0xffFAFAFA),
          ),
          RowField(
              detailsRowField:
                  DetailsRowField('assets/icons/Account.svg', 'Account ')),
        ],
      ),
    );
  }
}
