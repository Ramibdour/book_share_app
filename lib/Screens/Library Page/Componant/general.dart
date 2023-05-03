import 'package:book_share_app/Screens/Library%20Page/Componant/view_items_library.dart';
import 'package:flutter/material.dart';

import '../constant_library_page.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return ViewItemsLibrary(
      itemsList: itemsGeneralList,
    );
  }
}
