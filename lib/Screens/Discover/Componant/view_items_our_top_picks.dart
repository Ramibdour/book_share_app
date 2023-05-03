import 'package:book_share_app/Screens/Discover/Componant/item_our_top_picks.dart';
import 'package:book_share_app/Screens/Discover/Repository/our_top_picks_repository.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewItemsOurTopPicks extends StatefulWidget {
  const ViewItemsOurTopPicks({Key? key}) : super(key: key);

  @override
  State<ViewItemsOurTopPicks> createState() => _ViewItemsOurTopPicksState();
}

class _ViewItemsOurTopPicksState extends State<ViewItemsOurTopPicks> {
  @override
  Widget build(BuildContext context) {
    return Consumer<OurTopPicksRepository>(
      builder: (context, ourTopPicksRepository, child) {
        return Container(
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.only(left: 16),
          height: 205,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                child: ItemOurTopPicks(
                  detailsItemOurTopPicks:
                      ourTopPicksRepository.ourTopPicksList.elementAt(index),
                ),
                onTap: () {
                  ourTopPicksRepository.selectedOurTopPicks(index);
                },
              );
            },
            itemCount: ourTopPicksRepository.ourTopPicksList.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
