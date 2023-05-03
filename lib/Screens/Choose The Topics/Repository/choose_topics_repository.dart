import 'package:flutter/cupertino.dart';

import '../Models/choose_topics_model.dart';

class ChooseTopicsRepository extends ChangeNotifier {
  List<DetailsChooseTopics> chooseTopicsList = [
    DetailsChooseTopics('assets/images/Politics.png', 'Politics', false),
    DetailsChooseTopics('assets/images/History.png', 'History', false),
    DetailsChooseTopics('assets/images/Science.png', 'Science', false),
    DetailsChooseTopics('assets/images/Law.png', 'Law', false),
    DetailsChooseTopics('assets/images/Food.png', 'Food', false),
    DetailsChooseTopics('assets/images/Medical.png', 'Medical', false),
    DetailsChooseTopics('assets/images/Design.png', 'Design', false),
    DetailsChooseTopics('assets/images/Culture.png', 'Culture', false),
    DetailsChooseTopics('assets/images/Sport.png', 'Sport', false),
  ];

  void selectedTopic(DetailsChooseTopics detailsChooseTopics) {
    detailsChooseTopics.isSelected == false
        ? detailsChooseTopics.isSelected = true
        : detailsChooseTopics.isSelected = false;
    notifyListeners();
  }

  void applyTopic() {
    for (var element in chooseTopicsList) {
      element.isSelected = false;
    }
  }
}
