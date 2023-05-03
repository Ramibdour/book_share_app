import 'package:book_share_app/constant.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_item_store_and_wishlist_model.dart';

class CustomItemStoreAndWishList extends StatelessWidget {
  const CustomItemStoreAndWishList({
    Key? key,
    required this.detailsItemStoreAndWishList,
  }) : super(key: key);
  final DetailsItemStoreAndWishList detailsItemStoreAndWishList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Hero(
            tag: 'image-${detailsItemStoreAndWishList.id}',
            child: Material(
              type: MaterialType.transparency,
              child: Image.asset(
                detailsItemStoreAndWishList.imageItem,
                height: 175,
                width: 115,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  detailsItemStoreAndWishList.nameItem,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'SF',
                    color: const Color(0xff242126).withAlpha(75),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  detailsItemStoreAndWishList.authorItem,
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'SF',
                    color: const Color(0xff242126).withAlpha(50),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Hero(
                      tag: 'starone-${detailsItemStoreAndWishList.id}',
                      child: SvgPicture.asset(
                        detailsItemStoreAndWishList.star1,
                        fit: BoxFit.none,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Hero(
                      tag: 'startow-${detailsItemStoreAndWishList.id}',
                      child: SvgPicture.asset(
                        detailsItemStoreAndWishList.star2,
                        fit: BoxFit.none,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Hero(
                      tag: 'starthree-${detailsItemStoreAndWishList.id}',
                      child: SvgPicture.asset(
                        detailsItemStoreAndWishList.star3,
                        fit: BoxFit.none,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Hero(
                      tag: 'starfour-${detailsItemStoreAndWishList.id}',
                      child: SvgPicture.asset(
                        detailsItemStoreAndWishList.star4,
                        fit: BoxFit.none,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Hero(
                      tag: 'starfive-${detailsItemStoreAndWishList.id}',
                      child: SvgPicture.asset(
                        detailsItemStoreAndWishList.star5,
                        fit: BoxFit.none,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  detailsItemStoreAndWishList.describeItem,
                  style: TextStyle(
                    fontSize: 8,
                    fontFamily: 'SF',
                    color: const Color(0xff242126).withAlpha(25),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(children: [
                  Hero(
                      tag: 'AddToCart-${detailsItemStoreAndWishList.id}',
                      child: Container(
                        height: 30,
                        width: 75,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primerColor,
                        ),
                        child: const Material(
                          type: MaterialType.transparency,
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'SF',
                                color: Colors.white),
                          ),
                        ),
                      )),
                  Hero(
                      tag: 'wishList-${detailsItemStoreAndWishList.id}',
                      child: Container(
                        height: 30,
                        width: 120,
                        margin: const EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xff767676).withAlpha(15),
                                  offset: const Offset(0, 5),
                                  blurRadius: 15)
                            ]),
                        child: Material(
                          type: MaterialType.transparency,
                          child: Text(
                            detailsItemStoreAndWishList.storeBotton
                                ? 'Add to wishlist'
                                : 'Remove from wishlist',
                            style: const TextStyle(
                                fontSize: 10,
                                fontFamily: 'SF',
                                color: Color(0xff212121)),
                          ),
                        ),
                      )),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
