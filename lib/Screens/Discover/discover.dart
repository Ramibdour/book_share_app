import 'package:book_share_app/Screens/Discover/Componant/text_discover.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Search%20Field/custom_search_field.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Paint%20Header%20Page/paint_header_page.dart';

import 'package:flutter/material.dart';

import '../Shared Widget/Paint Header Page/paint_header_model.dart';
import 'Componant/trending_book_grid_view.dart';
import 'Componant/custom_view_items_list_view.dart';
import 'Componant/view_items_our_top_picks.dart';
import 'Componant/view_items_topics.dart';
import 'constant_discover.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: ListView(
            children: [
              Stack(
                children: [
                  const PaintHeaderPage(
                      customPaintForPage: CustomPaintForPage.paintForHome),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomSearchField(),
                      TextDiscover(
                        colorText: 0xffFFFFFF,
                        text: 'Our Top Picks',
                      ),
                      ViewItemsOurTopPicks(),
                    ],
                  ),
                ],
              ),
              const ViewItemsTopics(),
              const TextDiscover(text: 'Trending Books', colorText: 0xff000000),
              const TrendingBooksGridView(),
              const TextDiscover(text: 'Best Share', colorText: 0xff000000),
              CustomViewItemsListView(itemsList: bestShareList),
              const TextDiscover(
                  text: 'Recently Viewed', colorText: 0xff000000),
              CustomViewItemsListView(itemsList: recentlyViewedList),
            ],
          ),
        ),
      ),
    );
  }
}
