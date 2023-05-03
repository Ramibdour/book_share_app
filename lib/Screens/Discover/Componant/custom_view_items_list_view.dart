import 'package:book_share_app/Screens/Discover/Componant/item_list_view.dart';
import 'package:flutter/material.dart';

class CustomViewItemsListView extends StatelessWidget {
  const CustomViewItemsListView({
    Key? key,
    required this.itemsList,
  }) : super(key: key);
  final List itemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 274,
      margin: const EdgeInsets.only(left: 11, top: 10, bottom: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ItemListView(detailsItemListView: itemsList.elementAt(index));
        },
        itemCount: itemsList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
