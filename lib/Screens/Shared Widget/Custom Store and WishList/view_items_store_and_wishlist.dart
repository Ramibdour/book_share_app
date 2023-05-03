import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Store%20and%20WishList/display_hero_item.dart';
import 'package:flutter/material.dart';

import 'custom_item_store_and_wishlist.dart';

class ViewItemsStoreAndWishlist extends StatelessWidget {
  const ViewItemsStoreAndWishlist({Key? key, required this.itemsList})
      : super(key: key);
  final List itemsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: CustomItemStoreAndWishList(
                detailsItemStoreAndWishList: itemsList.elementAt(index)),
            onTap: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 700),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 300),
                      pageBuilder: (_, __, ___) => DisplayHeroItem(
                          detailsItemStoreAndWishList: itemsList[index])));
            },
          );
        },
        itemCount: itemsList.length,
      ),
    ));
  }
}
