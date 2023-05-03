import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Search%20Field/custom_search_field.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Store%20and%20WishList/view_items_store_and_wishlist.dart';

import 'package:flutter/material.dart';

import '../Shared Widget/Custom Store and WishList/constant_custom_item_store_and_wishlist.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: Column(
              children: [
                const CustomSearchField(),
                ViewItemsStoreAndWishlist(itemsList: itemsStoreList)
              ],
            ),
          )),
    );
  }
}
