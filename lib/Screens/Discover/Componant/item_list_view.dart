import 'package:flutter/material.dart';

import '../Models/item_list_view_model.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key, required this.detailsItemListView})
      : super(key: key);
  final DetailsItemListView detailsItemListView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff000000).withAlpha(30),
                      blurRadius: 7,
                      offset: const Offset(3, 4))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                detailsItemListView.itemImage,
                height: 200,
                width: 130,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: Text(
              detailsItemListView.itemName,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'SF',
                color: Color(0xff242126),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: Text(
              detailsItemListView.itemDescrib,
              style: TextStyle(
                fontSize: 11,
                fontFamily: 'SF',
                color: const Color(0xff212121).withAlpha(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
