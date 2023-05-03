import 'package:book_share_app/Screens/Shared%20Widget/Custom%20botton%20Text/custom_botton_text.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Text%20Field/custom_text_field.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Header%20For%20Sign%20and%20forgot%20password/header_sign.dart';

import 'package:flutter/material.dart';

import '../Shared Widget/Custom Text Field/custom_text_field_model.dart';
import '../Shared Widget/Custom botton Text/custom_botton_text_model.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextInputType userTextInput = TextInputType.emailAddress;
  final TextInputType passwordTextInput = TextInputType.visiblePassword;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderSign(
                  namePage: 'Sign In',
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomTextField(
                    putCustomTextField: PutCustomTextField(
                        false,
                        userTextController,
                        'User Name',
                        userTextInput,
                        'assets/icons/UserIcon.svg',
                        false)),
                CustomTextField(
                    putCustomTextField: PutCustomTextField(
                        true,
                        passwordTextController,
                        'Password',
                        passwordTextInput,
                        'assets/icons/passwordIcon.svg',
                        true)),
                GestureDetector(
                  child: CustomBottonText(
                    detailsCustomBotton:
                        DetailsCustomBotton('Sign In', 0xffFFFFFF, 0xffFF6EA1),
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21, right: 21, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 14,
                              color: Color(0xffFE1467)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/forgotPassword');
                        },
                      ),
                      GestureDetector(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 14,
                              color: Color(0xffFE1467)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
