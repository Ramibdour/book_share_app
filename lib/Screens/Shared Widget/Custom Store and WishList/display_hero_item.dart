import 'dart:ui';

import 'package:book_share_app/Screens/Shared%20Widget/Paint%20Header%20Page/paint_header_page.dart';
import 'package:book_share_app/constant.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Paint Header Page/paint_header_model.dart';
import 'custom_item_store_and_wishlist_model.dart';

class DisplayHeroItem extends StatelessWidget {
  const DisplayHeroItem({Key? key, required this.detailsItemStoreAndWishList})
      : super(key: key);
  final DetailsItemStoreAndWishList detailsItemStoreAndWishList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const PaintHeaderPage(
                      customPaintForPage: CustomPaintForPage.paintForProfile),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 15, right: 15, bottom: 20, top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 5, sigmaY: 5, tileMode: TileMode.mirror),
                    child: Container(
                      height: 325,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primerColor.withOpacity(0.15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(-5, 5),
                            ),
                          ],
                        ),
                        child: Hero(
                          tag: 'image-${detailsItemStoreAndWishList.id}',
                          child: Image.asset(
                            detailsItemStoreAndWishList.imageItem,
                            height: 280,
                            width: 190,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detailsItemStoreAndWishList.nameItem,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SF',
                        color: const Color(0xff242126).withAlpha(75),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      detailsItemStoreAndWishList.authorItem,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'SF',
                        color: const Color(0xff242126).withAlpha(50),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Hero(
                          tag: 'starone-${detailsItemStoreAndWishList.id}',
                          child: SvgPicture.asset(
                            detailsItemStoreAndWishList.star1,
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Hero(
                          tag: 'startow-${detailsItemStoreAndWishList.id}',
                          child: SvgPicture.asset(
                            detailsItemStoreAndWishList.star2,
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Hero(
                          tag: 'starthree-${detailsItemStoreAndWishList.id}',
                          child: SvgPicture.asset(
                            detailsItemStoreAndWishList.star3,
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Hero(
                          tag: 'starfour-${detailsItemStoreAndWishList.id}',
                          child: SvgPicture.asset(
                            detailsItemStoreAndWishList.star4,
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Hero(
                          tag: 'starfive-${detailsItemStoreAndWishList.id}',
                          child: SvgPicture.asset(
                            detailsItemStoreAndWishList.star5,
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      detailsItemStoreAndWishList.describeItem,
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SF',
                        color: const Color(0xff242126).withAlpha(25),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(children: [
                      Hero(
                        tag: 'AddToCart-${detailsItemStoreAndWishList.id}',
                        child: Container(
                          height: 45,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primerColor,
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color(0xff767676).withAlpha(45),
                                    offset: const Offset(0, 5),
                                    blurRadius: 15)
                              ]),
                          child: const Material(
                            type: MaterialType.transparency,
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'SF',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Hero(
                          tag: 'wishList-${detailsItemStoreAndWishList.id}',
                          child: Material(
                            type: MaterialType.transparency,
                            child: Container(
                              height: 45,
                              width: 160,
                              margin: const EdgeInsets.only(left: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0xff767676)
                                            .withAlpha(45),
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
                                      fontSize: 13,
                                      fontFamily: 'SF',
                                      color: Color(0xff212121)),
                                ),
                              ),
                            ),
                          )),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
