import 'package:book_share_app/Screens/Discover/Componant/item_topic.dart';
import 'package:book_share_app/Screens/Discover/Repository/item_topic_repository.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ViewItemsTopics extends StatelessWidget {
  const ViewItemsTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        margin: const EdgeInsets.only(left: 16, bottom: 30),
        child: Consumer<ItemTopicRepository>(
          builder: (context, itemTopicRepository, child) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Stack(
                    children: [
                      ItemTopics(
                          detailsItemTopic:
                              itemTopicRepository.itemsTopicsList[index]),
                      itemTopicRepository.selectedIndex == index &&
                              itemTopicRepository.selectedIndex != 0
                          ? Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffFF6EA1).withOpacity(0.4),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/Correct.svg',
                                fit: BoxFit.none,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  onTap: () {
                    itemTopicRepository.selectedTopic(index);
                    if (itemTopicRepository.selectedIndex == 0) {
                      Navigator.pushNamed(context, '/chooseTopics');
                    }
                  },
                );
              },
              itemCount: itemTopicRepository.itemsTopicsList.length,
              scrollDirection: Axis.horizontal,
            );
          },
        ));
  }
}
