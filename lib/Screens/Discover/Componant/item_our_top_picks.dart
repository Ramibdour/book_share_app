import 'package:book_share_app/Screens/Discover/Repository/our_top_picks_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/our_top_picks_model.dart';

class ItemOurTopPicks extends StatelessWidget {
  const ItemOurTopPicks({Key? key, required this.detailsItemOurTopPicks})
      : super(key: key);
  final DetailsItemOurTopPicks detailsItemOurTopPicks;

  @override
  Widget build(BuildContext context) {
    return Consumer<OurTopPicksRepository>(
      builder: (context, ourTopPicksRepository, child) {
        return Container(
          height: 205,
          margin: const EdgeInsets.only(right: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: const Color(0xff000000).withAlpha(30),
                      offset: const Offset(0, 5),
                      blurRadius: 10)
                ]),
                child: Image.asset(
                  detailsItemOurTopPicks.imageItem,
                  height: ourTopPicksRepository.selectedIndex ==
                          detailsItemOurTopPicks.idItem
                      ? 169
                      : 116,
                  width: ourTopPicksRepository.selectedIndex ==
                          detailsItemOurTopPicks.idItem
                      ? 100
                      : 77,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                detailsItemOurTopPicks.textItem,
                style: TextStyle(
                  fontSize: ourTopPicksRepository.selectedIndex ==
                          detailsItemOurTopPicks.idItem
                      ? 14
                      : 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SF',
                  color: const Color(0xffFFFFFF),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
