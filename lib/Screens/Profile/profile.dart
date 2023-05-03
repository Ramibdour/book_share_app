import 'package:book_share_app/Screens/Profile/Componant/details_profile.dart';
import 'package:book_share_app/Screens/Profile/Componant/field_account.dart';
import 'package:book_share_app/Screens/Profile/Componant/field_settings.dart';
import 'package:book_share_app/Screens/Profile/Componant/header_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderProfile(),
              DetailsProfile(),
              Padding(
                padding: EdgeInsets.only(left: 27, top: 33),
                child: Text(
                  'Account',
                  style: TextStyle(
                      fontFamily: 'SF',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xffC1C1C1)),
                ),
              ),
              FieldAccount(),
              Padding(
                padding: EdgeInsets.only(left: 27),
                child: Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'SF',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xffC1C1C1)),
                ),
              ),
              FieldSettings(),
            ],
          ),
        ),
      ),
    );
  }
}
