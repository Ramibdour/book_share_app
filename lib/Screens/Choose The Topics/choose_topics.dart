import 'package:book_share_app/Screens/Choose%20The%20Topics/Repository/choose_topics_repository.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20botton%20Text/custom_botton_text.dart';
import 'package:book_share_app/constant.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Shared Widget/Custom botton Text/custom_botton_text_model.dart';
import 'Componant/header_choose_topics.dart';
import 'Componant/view_item_choose_topics.dart';

class ChooseTopics extends StatelessWidget {
  const ChooseTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ChooseTopicsRepository>(
      builder: (context, chooseTopicsRepository, child) {
        return SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderChooseTopics(),
                const ViewItemsChooseTopics(),
                Text(
                  'More Topics',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: primerColor,
                    fontSize: 15,
                    fontFamily: 'SF',
                    color: primerColor,
                  ),
                ),
                GestureDetector(
                  child: CustomBottonText(
                    detailsCustomBotton:
                        DetailsCustomBotton('Apply', 0xffFF6EA1, 0xffFFFFFF),
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                    chooseTopicsRepository.applyTopic();
                  },
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
