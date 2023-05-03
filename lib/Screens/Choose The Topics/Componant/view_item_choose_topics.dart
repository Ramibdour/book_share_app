import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Repository/choose_topics_repository.dart';
import 'item_choose_topics.dart';

class ViewItemsChooseTopics extends StatelessWidget {
  const ViewItemsChooseTopics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.width > 700 ? 320 : 480,
        margin: const EdgeInsets.only(top: 35, left: 21, right: 21),
        child: Consumer<ChooseTopicsRepository>(
          builder: (context, chooseTopicsRepository, child) {
            return GridView.builder(
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 135,
                  maxCrossAxisExtent: 105),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ItemChooseTopics(
                        detailsChooseTopics: chooseTopicsRepository
                            .chooseTopicsList
                            .elementAt(index)),
                  ],
                );
              },
              itemCount: chooseTopicsRepository.chooseTopicsList.length,
            );
          },
        ));
  }
}
