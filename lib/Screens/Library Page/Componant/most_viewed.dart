import 'package:book_share_app/Screens/Library%20Page/Componant/view_items_library.dart';

import 'package:flutter/material.dart';

import '../constant_library_page.dart';

class MostViewed extends StatefulWidget {
  const MostViewed({Key? key}) : super(key: key);

  @override
  State<MostViewed> createState() => _MostViewedState();
}

class _MostViewedState extends State<MostViewed> {
  @override
  Widget build(BuildContext context) {
    return ViewItemsLibrary(itemsList: itemsMostViewedList);
  }
}
