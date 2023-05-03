import 'package:flutter/material.dart';

import '../Models/item_topic_model.dart';

class ItemTopics extends StatelessWidget {
  const ItemTopics({
    Key? key,
    required this.detailsItemTopic,
  }) : super(key: key);
  final DetailsItemTopic detailsItemTopic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Image.asset(
            detailsItemTopic.imageItem,
            height: 65,
            width: 65,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            detailsItemTopic.nameItem,
            style: const TextStyle(
              fontSize: 10,
              fontFamily: 'SF',
              color: Color(0xff17191D),
            ),
          )
        ],
      ),
    );
  }
}
