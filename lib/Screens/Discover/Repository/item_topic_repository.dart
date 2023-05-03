import 'package:flutter/widgets.dart';

import '../Models/item_topic_model.dart';

class ItemTopicRepository extends ChangeNotifier {
  List<DetailsItemTopic> itemsTopicsList = [
    DetailsItemTopic('assets/images/AddTopics.png', 'Add'),
    DetailsItemTopic('assets/images/Food.png', 'Food'),
    DetailsItemTopic('assets/images/Medical.png', 'Medical'),
    DetailsItemTopic('assets/images/History.png', 'History '),
    DetailsItemTopic('assets/images/Science.png', 'Science'),
  ];
  var selectedIndex = -1;
  void selectedTopic(int index) {
    selectedIndex == index ? selectedIndex = -1 : selectedIndex = index;
    notifyListeners();
  }
}
