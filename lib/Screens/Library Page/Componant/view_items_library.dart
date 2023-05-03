import 'package:book_share_app/Screens/Library%20Page/Componant/item_library.dart';
import 'package:flutter/material.dart';

class ViewItemsLibrary extends StatelessWidget {
  const ViewItemsLibrary({
    Key? key,
    required this.itemsList,
  }) : super(key: key);
  final List itemsList;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 170,
            mainAxisExtent: 202,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return ItemLibrary(detailsItemLibrary: itemsList.elementAt(index));
        },
        itemCount: itemsList.length,
      ),
    ));
  }
}
