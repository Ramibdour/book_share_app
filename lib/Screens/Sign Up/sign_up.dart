import 'package:book_share_app/Screens/Shared%20Widget/Custom%20botton%20Text/custom_botton_text.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Text%20Field/custom_text_field.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Header%20For%20Sign%20and%20forgot%20password/header_sign.dart';

import 'package:flutter/material.dart';

import '../Shared Widget/Custom Text Field/custom_text_field_model.dart';
import '../Shared Widget/Custom botton Text/custom_botton_text_model.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController mobileTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();
  final TextInputType userTextInput = TextInputType.emailAddress;
  final TextInputType emailTextInput = TextInputType.emailAddress;
  final TextInputType mobileTextInput = TextInputType.phone;
  final TextInputType passwordTextInput = TextInputType.visiblePassword;
  final TextInputType confirmPasswordTextInput = TextInputType.visiblePassword;
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
                  namePage: 'Sign Up',
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
                        false,
                        emailTextController,
                        'Email',
                        emailTextInput,
                        'assets/icons/Email.svg',
                        false)),
                CustomTextField(
                    putCustomTextField: PutCustomTextField(
                        false,
                        mobileTextController,
                        'Mobile Number',
                        mobileTextInput,
                        'assets/icons/Phone.svg',
                        false)),
                CustomTextField(
                    putCustomTextField: PutCustomTextField(
                        true,
                        passwordTextController,
                        'Password',
                        passwordTextInput,
                        'assets/icons/passwordIcon.svg',
                        true)),
                CustomTextField(
                    putCustomTextField: PutCustomTextField(
                        true,
                        confirmPasswordTextController,
                        'Confirm Password',
                        confirmPasswordTextInput,
                        'assets/icons/passwordIcon.svg',
                        true)),
                GestureDetector(
                  child: CustomBottonText(
                    detailsCustomBotton:
                        DetailsCustomBotton('Sign UP', 0xffFFFFFF, 0xffFF6EA1),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            actions: [
                              GestureDetector(
                                child: const Text(
                                  'Ok',
                                  style: TextStyle(
                                      fontFamily: 'SF',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                onTap: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/signIn', (route) => false);
                                },
                              ),
                            ],
                            actionsPadding: const EdgeInsets.all(15),
                            title:
                                const Text('You have signed up successfully'),
                            titleTextStyle: const TextStyle(
                                fontFamily: 'SF',
                                fontWeight: FontWeight.w900,
                                fontSize: 24,
                                color: Color(0xff000000)),
                            content: const Text(
                                'Welcome to Book Share!\nYou can Sign In Now '),
                            contentTextStyle: const TextStyle(
                                fontFamily: 'Nova',
                                fontSize: 16,
                                color: Color(0xff000000)),
                          );
                        });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21, right: 21, top: 40),
                  child: GestureDetector(
                    child: const Text(
                      'Already a member? Sign In',
                      style: TextStyle(
                          fontFamily: 'SF',
                          fontSize: 14,
                          color: Color(0xffFE1467)),
                    ),
                    onTap: () {
                      Navigator.restorablePushNamedAndRemoveUntil(
                          context, '/signIn', (route) => false);
                    },
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
