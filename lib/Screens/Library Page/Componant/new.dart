import 'package:book_share_app/Screens/Library%20Page/Componant/view_items_library.dart';

import 'package:flutter/material.dart';

import '../constant_library_page.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return ViewItemsLibrary(itemsList: itemsNewList);
  }
}
