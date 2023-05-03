import 'package:flutter/cupertino.dart';

import '../Models/our_top_picks_model.dart';

class OurTopPicksRepository extends ChangeNotifier {
  List<DetailsItemOurTopPicks> ourTopPicksList = [
    DetailsItemOurTopPicks('assets/images/Emile Zola.png', 'Emile Zola', 0),
    DetailsItemOurTopPicks('assets/images/The Fatal Tree.png', 'The Fetal', 1),
    DetailsItemOurTopPicks('assets/images/Fatherhood.png', 'Fatherhood', 2),
    DetailsItemOurTopPicks('assets/images/Day Four.png', 'Day Four', 3),
    DetailsItemOurTopPicks(
        'assets/images/Time And Space.png', 'Time And Space', 4),
  ];
  var selectedIndex = -1;
  void selectedOurTopPicks(int index) {
    selectedIndex == index ? selectedIndex = -1 : selectedIndex = index;
    notifyListeners();
  }
}
