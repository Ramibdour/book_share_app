import 'package:book_share_app/Screens/Shared%20Widget/Custom%20botton%20Text/custom_botton_text.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Text%20Field/custom_text_field.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Header%20For%20Sign%20and%20forgot%20password/header_sign.dart';

import 'package:flutter/material.dart';

import '../Shared Widget/Custom Text Field/custom_text_field_model.dart';
import '../Shared Widget/Custom botton Text/custom_botton_text_model.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  final TextEditingController emailTextController = TextEditingController();
  final TextInputType emailTextInput = TextInputType.emailAddress;
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
                  namePage: 'Forgot Password',
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomTextField(
                    putCustomTextField: PutCustomTextField(
                        false,
                        emailTextController,
                        'Email',
                        emailTextInput,
                        'assets/icons/UserIcon.svg',
                        false)),
                GestureDetector(
                  child: CustomBottonText(
                    detailsCustomBotton:
                        DetailsCustomBotton('Send', 0xffFFFFFF, 0xffFF6EA1),
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
                            title: const Text('Reset Password successfully'),
                            titleTextStyle: const TextStyle(
                                fontFamily: 'SF',
                                fontWeight: FontWeight.w900,
                                fontSize: 24,
                                color: Color(0xff000000)),
                            content: const Text(
                                'we will send you an email with a link to reset your password '),
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
                      'Back To Sign In',
                      style: TextStyle(
                          fontFamily: 'SF',
                          fontSize: 14,
                          color: Color(0xffFE1467)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/signIn');
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
